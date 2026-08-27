#!/bin/python3

"""Generates screenshots by driving Ethos' WASM simulator.

Downloads on demand:
- the run_wasm.js tool from the FrSkyRC/ethos-tools repository (simulation/
  directory), which loads the WASM module in Node.js and can run a Lua
  macro in it;
- the WASM simulator for a given radio, from the assets of a
  FrSkyRC/ETHOS-Feedback-Community release (the "<radio>-WebSimulator.zip"
  archive, not to be confused with "<radio>.zip" which only contains
  firmware.bin).

Example:
    python forge/screenshots.py --release 26.1.0-RC7
"""

import argparse
import fnmatch
import io
import os
import shutil
import subprocess
import time
import urllib.request
import zipfile

from PIL import Image, ImageChops

LOCALIZED_FORGE_DIR = os.path.join(os.getcwd(), "forge")
COMMON_FORGE_DIR = os.path.dirname(os.path.abspath(__file__))
CACHE_DIR = os.path.join(COMMON_FORGE_DIR, ".cache")
SIMULATION_DIR = os.path.join(CACHE_DIR, "simulation")
BUILD_DIR = os.path.join(LOCALIZED_FORGE_DIR, "build")
SCREENSHOTS_DIR = os.path.join(LOCALIZED_FORGE_DIR, "..", "screenshots")
if not os.path.exists(SCREENSHOTS_DIR):
    SCREENSHOTS_DIR = os.path.join(LOCALIZED_FORGE_DIR, "..", "assets")
FAIL_DIR = os.path.join(BUILD_DIR, "fail")

# Source sub-directories copied as-is from forge/ into build/.
BUILD_SOURCE_DIRS = ("models", "bitmaps", "scripts", "documents", "firmware", "logs", "macros")
AUDIO_LANGUAGES = ("de", "en", "es", "fr", "it")

RUN_WASM_URL = "https://raw.githubusercontent.com/FrSkyRC/ethos-tools/main/simulation/run_wasm.js"
RELEASE_ASSET_URL = "https://github.com/FrSkyRC/ETHOS-Feedback-Community/releases/download/{release}/{asset}"

X20S_MACROS = [
    "model-select.lua",
    "model-edit.lua",
    "model-fm.lua",
    "model-mixes.lua",
    "model-mixes-free.lua",
    "model-mix-eg.lua",
    "model-outputs.lua",
    "model-chview.lua",
    "model-timers.lua",
    "model-trims.lua",
    # "model-rf.lua",
    "model-checklist.lua",
    "model-lsw.lua",
    "model-sf.lua",
    "model-curves.lua",
    "model-vars.lua",
    "model-trainer.lua",
    "model-blanks.lua",
    "display.lua",
    "basic-example.lua",
    "wing-example.lua",
    "heli-example.lua",
    "how-to-low-batt.lua", # how to 1
    "how-to-consumption.lua", # how to 3
    "how-to-butterfly.lua", # how to 6
    "how-to-in-flight-comp.lua", # how to 10
    "trainer-take-back.lua", # how to 11
    "how-to-gear-seq.lua", # how to 13
    "model-lua.lua",
    # system
    "system-menu.lua",
    # ui
    "user-interface.lua",
    "mainview.lua",
    # this must be last due to the Lock SF in topbar.bin
    "telemetry.lua",
    "toolbars.lua",
]


X20PRO_MACROS = [
    "x20pro.lua"
]

X18S_MACROS = [
    "x18s.lua"
]

X20PROAW_MACROS = [
    "x20proaw.lua"
]

ALL_MACROS = {
    "X20S_FCC": X20S_MACROS,
    "X20PRO_FCC": X20PRO_MACROS,
    "X18S_FCC": X18S_MACROS,
    "X20PROAW_FCC": X20PROAW_MACROS,
}


ONE_DAY_SECONDS = 24 * 60 * 60


def download(url, dest_path, force=False):
    if not force and os.path.exists(dest_path):
        age = time.time() - os.path.getmtime(dest_path)
        if age < ONE_DAY_SECONDS:
            return dest_path

    os.makedirs(os.path.dirname(dest_path), exist_ok=True)
    print(f"Download {url}")
    try:
        with urllib.request.urlopen(url) as response, open(dest_path, "wb") as dest:
            dest.write(response.read())
    except urllib.error.HTTPError as e:
        raise RuntimeError(f"Failed to download {url} ({e.code} {e.reason})") from e
    return dest_path


def fetch_run_wasm(force=False):
    """Fetches run_wasm.js from ethos-tools (cached in .cache/)."""
    run_wasm_path = os.path.join(CACHE_DIR, "run_wasm.js")
    return download(RUN_WASM_URL, run_wasm_path, force=force)


def fetch_simulator(release, radio, force=False):
    """Downloads and unzips the simulator WASM for a given release / radio,
    then returns the path to the JS glue file to pass to run_wasm.js.
    """
    asset_name = f"{radio.replace('_', '-')}-WebSimulator.zip"
    extract_dir = os.path.join(SIMULATION_DIR, f"{radio}-{release}")
    js_path = os.path.join(extract_dir, f"{radio}.js")

    if force or not os.path.exists(js_path):
        zip_path = os.path.join(SIMULATION_DIR, asset_name)
        url = RELEASE_ASSET_URL.format(release=release, asset=asset_name)
        download(url, zip_path, force=force)

        os.makedirs(extract_dir, exist_ok=True)
        with zipfile.ZipFile(zip_path) as archive:
            archive.extractall(extract_dir)

    if not os.path.exists(js_path):
        raise RuntimeError(
            f"{js_path} not found after extraction: the zip may not "
            f"contain the expected file, check its contents."
        )
    return js_path


def setup_builddir(release, radio):
    if os.path.exists(os.path.join(LOCALIZED_FORGE_DIR, f"{ radio }.bin")):
        shutil.copy(os.path.join(LOCALIZED_FORGE_DIR, f"{ radio }.bin"), os.path.join(BUILD_DIR, "radio.bin"))
    elif os.path.exists(os.path.join(COMMON_FORGE_DIR, f"{ radio }.bin")):
        shutil.copy(os.path.join(COMMON_FORGE_DIR, f"{ radio }.bin"), os.path.join(BUILD_DIR, "radio.bin"))
    else:
        print(f"Missing { radio }.bin!")
        exit(-1)

    for name in BUILD_SOURCE_DIRS:
        if os.path.exists(os.path.join(COMMON_FORGE_DIR, name)):
            shutil.copytree(os.path.join(COMMON_FORGE_DIR, name), os.path.join(BUILD_DIR, name), dirs_exist_ok=True)
        # if os.path.exists(os.path.join(LOCALIZED_FORGE_DIR, name)):
        #     shutil.copytree(os.path.join(LOCALIZED_FORGE_DIR, name), os.path.join(BUILD_DIR, name), dirs_exist_ok=True)

    audio_cache_dir = os.path.join(CACHE_DIR, "audio", release)
    audio_build_dir = os.path.join(BUILD_DIR, "audio")
    for lang in AUDIO_LANGUAGES:
        asset_name = f"audio-{lang}.zip"
        url = RELEASE_ASSET_URL.format(release=release, asset=asset_name)
        zip_path = download(url, os.path.join(audio_cache_dir, asset_name))
        with zipfile.ZipFile(zip_path) as archive:
            archive.extractall(audio_build_dir)


def run_macros(release, radio, macros, force=False):
    run_wasm_path = fetch_run_wasm(force=force)
    js_path = fetch_simulator(release, radio, force=force)
    setup_builddir(release, radio)
    for macro in macros:
        subprocess.run([
                "node", run_wasm_path, js_path,
                "--root-directory", BUILD_DIR,
                "--macro", f'USER:/macros/{macro}',
            ], check=True, cwd=BUILD_DIR)


def save_diff_image(ref_path, new_path, diff_path):
    """Saves a copy of the new screenshot with every pixel that differs from
    the reference one highlighted in red, to make the change easy to spot."""
    ref = Image.open(ref_path).convert("RGB")
    new = Image.open(new_path).convert("RGB")
    if ref.size != new.size:
        print(f"  (size changed, cannot highlight pixel differences: {ref.size} -> {new.size})")
        return

    diff_mask = ImageChops.difference(ref, new).convert("L").point(lambda p: 255 if p else 0)
    highlighted = new.copy()
    highlighted.paste(Image.new("RGB", new.size, (57, 255, 20)), mask=diff_mask)

    os.makedirs(os.path.dirname(diff_path), exist_ok=True)
    highlighted.save(diff_path, optimize=True)
    print(f"  diff saved to {diff_path}")


def images_differ(path1, path2):
    img1 = Image.open(path1).convert("RGB")
    img2 = Image.open(path2).convert("RGB")
    if img1.size != img2.size:
        return True
    return ImageChops.difference(img1, img2).getbbox() is not None


def save_optimized_png(src_path, dest_path):
    Image.open(src_path).save(dest_path, optimize=True)


def copy_screenshots():
    os.makedirs(FAIL_DIR, exist_ok=True)

    src = os.path.join(BUILD_DIR, "screenshots")
    for name in os.listdir(src):
        src_path = os.path.join(src, name)
        ref_path = os.path.join(SCREENSHOTS_DIR, name)
        if not os.path.exists(ref_path):
            print(f"New screenshot: {name}")
            save_optimized_png(src_path, os.path.join(FAIL_DIR, name))
        elif images_differ(src_path, ref_path):
            print(f"Changed screenshot: {name}")
            save_optimized_png(ref_path, os.path.join(FAIL_DIR, name.replace(".png", ".ref.png")))
            save_optimized_png(src_path, os.path.join(FAIL_DIR, name))
            save_diff_image(ref_path, src_path, os.path.join(FAIL_DIR, name.replace(".png", ".diff.png")))
        else:
            # Same pixels: keep whichever encoding is smaller as the reference.
            ref_size = os.path.getsize(ref_path)
            buffer = io.BytesIO()
            Image.open(src_path).save(buffer, format="PNG", optimize=True)
            new_size = buffer.tell()
            if new_size < ref_size:
                gain = 100 * (1 - new_size / ref_size)
                with open(ref_path, "wb") as dest:
                    dest.write(buffer.getvalue())
                print(f"Recompressed {name}: {ref_size} -> {new_size} bytes ({gain:.1f}% smaller)")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--release", required=True, help="e.g. nightly26")
    parser.add_argument("--force", action="store_true", help="download even if already cached")
    parser.add_argument("--radio", help="e.g. X20S_FCC")
    parser.add_argument("filter", nargs="?", default=None, help='e.g. "model-*.lua" to only run matching macros')
    args = parser.parse_args()

    if os.path.exists(BUILD_DIR):
        shutil.rmtree(BUILD_DIR)
    os.makedirs(BUILD_DIR)

    for radio, macros in ALL_MACROS.items():
        if args.radio and args.radio != radio:
            continue
        if args.filter:
            macros = [m for m in macros if fnmatch.fnmatch(m, args.filter)]
        if macros:
            run_macros(args.release, radio, macros, args.force)

    if os.path.exists(os.path.join(BUILD_DIR, "screenshots")):
        copy_screenshots()
    else:
        print("No screenshot generated (wrong filter?)")


if __name__ == "__main__":
    main()
