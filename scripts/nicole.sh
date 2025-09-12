#!/usr/bin/env bash

set -euo pipefail

props=(
        "ro.product.brand=Razer"
        "ro.product.manufacturer=Razer"
        "ro.system.product.brand=Razer"
        "ro.product.name=Nicole"
        "ro.product.device=Razer-Edge-WiFi"
        "ro.product.model=Razer Edge WiFi"
        "ro.build.fingerprint=Razer/Nicole/Razer-Edge-WiFi:12/SKQ1.211103.001/172:user/release-keys"
        "ro.bootimage.build.fingerprint=Razer/Nicole/Razer-Edge-WiFi:11/RKQ1.211130.001/172:user/release-keys"
        "ro.build.display.id=Razer Edge WiFi-12-user-172"
        "ro.build.tags=release-keys"
        "ro.build.description=Nicole-user 12 SKQ1.211103.001 172 release-keys"
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
