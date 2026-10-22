#!/bin/bash

# Add ROM Flags
DEVICES=("cupid" "diting" "mayfly" "thor" "unicorn" "zeus" "mondrian")
for DEVICE in "${DEVICES[@]}"; do
    echo -e '\nINFINITY_MAINTAINER := "Joshaby"

    # Whether the device supports Fingerprint On Display
    TARGET_HAS_UDFPS := true

    # Whether Including Google Apps
    WITH_GAPPS := true\n' >> device/xiaomi/$DEVICE/infinity_$DEVICE.mk
done

echo -e "\n
ro.product.marketname=Xiaomi 12 - Cupid
ro.infinity.soc=Snapdragon® 8 Gen 1
ro.infinity.camera=50MP + 13MP + 5MP\n" >> device/xiaomi/cupid/properties/system.prop

echo -e "\n
ro.product.marketname=Xiaomi 12 Pro - Zeus
ro.infinity.soc=Snapdragon® 8 Gen 1
ro.infinity.camera=50MP + 50MP + 50MP\n" >> device/xiaomi/zeus/properties/system.prop

echo -e "\n
ro.product.marketname=Xiaomi 12S - Mayfly
ro.infinity.soc=Snapdragon® 8+ Gen 1
ro.infinity.camera=50MP + 13MP + 5MP\n" >> device/xiaomi/mayfly/properties/system.prop

echo -e "\n
ro.product.marketname=Xiaomi 12S Pro - Unicorn
ro.infinity.soc=Snapdragon® 8+ Gen 1
ro.infinity.camera=50MP + 50MP + 50MP\n" >> device/xiaomi/unicorn/properties/system.prop

echo -e "\n
ro.product.marketname=Xiaomi 12T Pro - Diting
ro.infinity.soc=Snapdragon® 8+ Gen 1
ro.infinity.camera=200MP + 8MP + 5MP\n" >> device/xiaomi/diting/properties/system.prop

echo -e "\n
ro.product.marketname=Xiaomi 12S Ultra - Thor
ro.infinity.soc=Snapdragon® 8+ Gen 1
ro.infinity.camera=50MP + 48MP + 48MP\n" >> device/xiaomi/thor/properties/system.prop

echo -e "\n
ro.product.marketname=Xiaomi Poco F5 Pro - Mondrian
ro.infinity.soc=Snapdragon® 8+ Gen 1
ro.infinity.camera=64MP + 8MP + 2MP\n" >> device/xiaomi/mondrian/properties/system.prop