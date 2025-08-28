#!/usr/bin/env bash

set -euo pipefail

props=(
        "ro.product.brand=Razer"
        "ro.product.manufacturer=Razer"
        "ro.system.product.brand=Razer"
        "ro.product.name=Nicole"
        "ro.product.device=Razer-Edge-WiFi"
        "ro.product.model=Razer Edge WiFi"
        "ro.build.fingerprint=google/treble_arm64_bgN/tdgsi_arm64_ab:15/AP4A.250205.002/eng.andrew:userdebug/release-keys"
        "ro.bootimage.build.fingerprint=Razer/Nicole/Razer-Edge-WiFi:11/RKQ1.211130.001/172:user/release-keys"
        "ro.build.display.id=treble_arm64_bgN-userdebug 15 AP4A.250205.002 eng.andrew"
        "ro.build.tags=release-keys"
        "ro.build.description=treble_arm64_bgN-userdebug 15 AP4A.250205.002 eng.andrew release-keys"
        "ro.vendor.build.fingerprint=Razer/Nicole/Razer-Edge-WiFi:11/RKQ1.211130.001/172:user/release-keys"
        "ro.vendor.build.id=RKQ1.211130.001"
        "ro.vendor.build.tags=release-keys"
        "ro.vendor.build.type=user"
        "ro.odm.build.tags=release-keys"
        "ro.build.selinux = 1"
)

for i in "${props[@]}";
        do echo $i >> /var/lib/waydroid/waydroid.cfg
done

waydroid upgrade --offline
