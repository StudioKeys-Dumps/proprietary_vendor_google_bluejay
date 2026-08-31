#!/usr/bin/env bash
# Download Pixel Velvet (Google App) prebuilt from cheetah dump if not present
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
TARGET_DIR="${DIR}/proprietary/product/priv-app/Velvet"
TARGET_FILE="${TARGET_DIR}/Velvet.apk"
URL="https://dumps.tadiphone.dev/dumps/google/cheetah/-/raw/generic_system_google-user-CinnamonBun-CP31.260522.006.A1-15591683-release-keys/product/priv-app/Velvet/Velvet.apk"

mkdir -p "${TARGET_DIR}"
if [ ! -f "${TARGET_FILE}" ]; then
    echo "Downloading Velvet.apk (Google App prebuilt)..."
    curl -L --progress-bar -o "${TARGET_FILE}" "${URL}"
    echo "Done."
else
    echo "Velvet.apk already present."
fi
