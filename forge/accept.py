#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import glob
import shutil

LOCALIZED_FORGE_DIR = os.path.join(os.getcwd(), "forge")
SCREENSHOTS_DIR = os.path.join(LOCALIZED_FORGE_DIR, "..", "screenshots")
if not os.path.exists(SCREENSHOTS_DIR):
    SCREENSHOTS_DIR = os.path.join(LOCALIZED_FORGE_DIR, "..", "assets")
BUILD_DIR = os.path.join(LOCALIZED_FORGE_DIR, "build")
FAIL_DIR = os.path.join(BUILD_DIR, "fail")


def main():
    for screenshot in glob.glob(FAIL_DIR + "/*.png"):
        if not screenshot.endswith(".diff.png") and not screenshot.endswith(".ref.png"):
            destination = os.path.abspath(os.path.join(SCREENSHOTS_DIR, os.path.basename(screenshot)))
            print(f"Replacing { destination }")
            shutil.copyfile(screenshot, destination)


if __name__ == "__main__":
    main()
