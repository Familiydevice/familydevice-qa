#!/bin/bash
# Installs the familydevice QA build into an iOS simulator and launches it.
#
#   ./install.sh                          -> latest build, device "iPhone 17"
#   ./install.sh "iPhone 18 Pro"          -> that device (name or UDID, see `xcrun simctl list devices`)
#   ./install.sh "iPhone 17" -FDSimulation -> extra launch arguments go to the app
#   VERSION=0.9.105 ./install.sh          -> a specific release instead of the latest
#
# Without a familydevice.app next to this script, the build is downloaded
# from the GitHub Releases of this repository (no account needed).
set -euo pipefail
cd "$(dirname "$0")"

REPO="Familiydevice/familydevice-qa"
DEVICE="${1:-iPhone 17}"
shift || true
APP="familydevice.app"
BUNDLE="com.familydevice.app"
ZIP="familydevice-simulator.zip"

command -v xcrun >/dev/null || { echo "Xcode command line tools missing (xcode-select --install)"; exit 1; }

if [ ! -d "$APP" ]; then
  if [ -n "${VERSION:-}" ]; then
    URL="https://github.com/$REPO/releases/download/v$VERSION/$ZIP"
  else
    URL="https://github.com/$REPO/releases/latest/download/$ZIP"
  fi
  echo "Downloading $URL…"
  curl -fL --progress-bar -o "$ZIP" "$URL"
  rm -rf "$APP"
  ditto -x -k "$ZIP" .
  rm -f "$ZIP"
  [ -d "$APP" ] || { echo "$ZIP did not contain $APP"; exit 1; }
fi
echo "familydevice $(/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' "$APP/Info.plist") (Build $(/usr/libexec/PlistBuddy -c 'Print :CFBundleVersion' "$APP/Info.plist"))"

# Resolve name -> UDID (first available device with that name), accept a UDID as is.
if [[ "$DEVICE" =~ ^[0-9A-Fa-f-]{36}$ ]]; then
  UDID="$DEVICE"
else
  UDID=$(xcrun simctl list devices available | grep -F "$DEVICE (" | head -1 | sed -E 's/.*\(([0-9A-Fa-f-]{36})\).*/\1/')
  [ -n "$UDID" ] || { echo "No available simulator named '$DEVICE'. See: xcrun simctl list devices available"; exit 1; }
fi

xcrun simctl boot "$UDID" 2>/dev/null || true     # already booted is fine
# Simulator window: Simulator.app (Xcode 26 and older) or DeviceHub (Xcode 27).
open -b com.apple.iphonesimulator --args -CurrentDeviceUDID "$UDID" 2>/dev/null \
  || open -b com.apple.dt.Devices 2>/dev/null \
  || echo "(Simulator window not opened; the device still runs headless)"
xcrun simctl bootstatus "$UDID" -b >/dev/null

echo "Installing $APP on $DEVICE ($UDID)…"
xcrun simctl install "$UDID" "$APP"
echo "Launching $BUNDLE $*"
xcrun simctl launch --terminate-running-process "$UDID" "$BUNDLE" "$@"
echo "Done. First render takes up to 20 s; allow the notifications prompt once."
