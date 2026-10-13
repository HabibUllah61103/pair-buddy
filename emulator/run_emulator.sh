#!/bin/bash
export ANDROID_HOME=/usr/lib/android-sdk
export ANDROID_SDK_ROOT=/usr/lib/android-sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$PATH
export QT_QPA_PLATFORM=xcb

# Default to lovio_emulator if not specified
AVD_NAME="${1:-lovio_emulator}"

echo "Available AVDs:"
emulator -list-avds
echo "-----------------------------------"
echo "Launching Android Emulator: $AVD_NAME (Front: Laptop Camera, Back: Emulated)..."
emulator -avd "$AVD_NAME" -camera-front webcam0 -camera-back emulated "${@:2}"
