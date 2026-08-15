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
import os
import shutil
import subprocess
import urllib.request
import zipfile

LOCALIZED_FORGE_DIR = os.path.join(os.getcwd(), "forge")
COMMON_FORGE_DIR = os.path.dirname(os.path.abspath(__file__))
CACHE_DIR = os.path.join(COMMON_FORGE_DIR, ".cache")
SIMULATION_DIR = os.path.join(CACHE_DIR, "simulation")
BUILD_DIR = os.path.join(LOCALIZED_FORGE_DIR, "build")
SCREENSHOTS_DIR = os.path.join(LOCALIZED_FORGE_DIR, "..", "screenshots")

# Source sub-directories copied as-is from forge/ into build/.
BUILD_SOURCE_DIRS = ("models", "bitmaps", "scripts", "documents", "macros")
AUDIO_LANGUAGES = ("de", "en", "es", "fr", "it")

RUN_WASM_URL = "https://raw.githubusercontent.com/FrSkyRC/ethos-tools/main/simulation/run_wasm.js"
RELEASE_ASSET_URL = "https://github.com/FrSkyRC/ETHOS-Feedback-Community/releases/download/{release}/{asset}"


def download(url, dest_path, force=False):
    if not force and os.path.exists(dest_path):
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


def fetch_simulator(radio, release, force=False):
    """Downloads and unzips the simulator WASM for a given radio/release,
    then returns the path to the JS glue file to pass to run_wasm.js.
    """
    # The asset name uses dashes ("X20S-FCC-WebSimulator.zip") while
    # --radio and the files inside the zip use underscores
    # ("X20S_FCC.js"/.wasm).
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


def run_macro(radio, release, macro, force=False):
    run_wasm_path = fetch_run_wasm(force=force)
    js_path = fetch_simulator(radio, release, force=force)
    subprocess.run([
            "node", run_wasm_path, js_path,
            "--root-directory", BUILD_DIR,
            "--macro", f'USER:/macros/{macro}',
        ], check=True, cwd=BUILD_DIR)


def setup_builddir(release, radio):
    """Stages a clean build/ directory to mount as run_wasm.js's
    --root-directory: sources copied from forge/, plus the radio settings
    and audio packs the simulator expects to find there."""
    if os.path.exists(BUILD_DIR):
        shutil.rmtree(BUILD_DIR)
    os.makedirs(BUILD_DIR)

    if os.path.exists(os.path.join(LOCALIZED_FORGE_DIR, f"{ radio }.bin")):
        shutil.copy(os.path.join(LOCALIZED_FORGE_DIR, f"{ radio }.bin"), os.path.join(BUILD_DIR, "radio.bin"))
    elif os.path.exists(os.path.join(COMMON_FORGE_DIR, f"{ radio }.bin")):
        shutil.copy(os.path.join(COMMON_FORGE_DIR, f"{ radio }.bin"), os.path.join(BUILD_DIR, "radio.bin"))

    for name in BUILD_SOURCE_DIRS:
        if os.path.exists(os.path.join(COMMON_FORGE_DIR, name)):
            shutil.copytree(os.path.join(COMMON_FORGE_DIR, name), os.path.join(BUILD_DIR, name))
        if os.path.exists(os.path.join(LOCALIZED_FORGE_DIR, name)):
            shutil.copytree(os.path.join(LOCALIZED_FORGE_DIR, name), os.path.join(BUILD_DIR, name), dirs_exist_ok=True)

    audio_cache_dir = os.path.join(CACHE_DIR, "audio", release)
    audio_build_dir = os.path.join(BUILD_DIR, "audio")
    for lang in AUDIO_LANGUAGES:
        asset_name = f"audio-{lang}.zip"
        url = RELEASE_ASSET_URL.format(release=release, asset=asset_name)
        zip_path = download(url, os.path.join(audio_cache_dir, asset_name))
        with zipfile.ZipFile(zip_path) as archive:
            archive.extractall(audio_build_dir)


def copy_screenshots():
    """Copies every screenshot produced by the macro run from build/screenshots
    into french/screenshots/."""
    src = os.path.join(BUILD_DIR, "screenshots")
    shutil.copytree(src, SCREENSHOTS_DIR, dirs_exist_ok=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--release", required=True, help="ex. nightly26")
    parser.add_argument("--force", action="store_true", help="download even if already cached")
    args = parser.parse_args()

    setup_builddir(args.release, "x20s")
    run_macro("X20S_FCC", args.release, "x20s.lua", args.force)
    copy_screenshots()


if __name__ == "__main__":
    main()
