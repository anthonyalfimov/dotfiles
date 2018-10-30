#!/usr/bin/env bash
# Script to be run by an Xcode Behavior to open a new Terminal window
# in the folder containing current project's source files
open -a Terminal "$SRCROOT"
