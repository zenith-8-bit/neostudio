#!/bin/bash
# 1. Trigger the build via SSH (assuming you have gradle set up in Termux)
ssh -p 8022 localhost "cd ~/my-project && ./gradlew assembleDebug"

# 2. Pull the APK from the phone to laptop (optional)
# 3. Use ADB to install the built APK back to the phone OS
adb install path/to/built/app-debug.apk

# 4. Launch the app
adb shell am start -n com.package.name/.MainActivity
