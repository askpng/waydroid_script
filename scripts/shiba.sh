#!/usr/bin/env bash

set -euo pipefail

props=(
        "ro.product.brand=google"
        "ro.product.manufacturer=Google"
        "ro.system.build.product=shiba"
        "ro.product.name=shiba"
        "ro.product.device=shiba"
        "ro.product.model=Pixel 8"
        "ro.build.selinux = 1"
)

for i in "${props[@]}";
        do echo $i >> /var/lib/waydroid/waydroid.cfg
done

waydroid upgrade --offline