#!/bin/bash

echo "Enter the ROM name in lowercase:"
read -p "> " ROM_NAME
echo -e "----------------------------------------\n"

DEVICES=("cupid" "diting" "mayfly" "thor" "unicorn" "zeus" "mondrian")
COMMON_DT="sm8450-common"
DEVICE_PATH="device/xiaomi"

# Iterate cleanly through the defined array
for DEVICE in "${DEVICES[@]}"; do
    echo "Processing $DEVICE..."
    
    # 1. Rename the device makefile (if it exists)
    if [ -f "$DEVICE_PATH/$DEVICE/lineage_$DEVICE.mk" ]; then
        mv "$DEVICE_PATH/$DEVICE/lineage_$DEVICE.mk" "$DEVICE_PATH/$DEVICE/${ROM_NAME}_${DEVICE}.mk"
    fi

    # 2. Update text inside the newly renamed makefile using sed -i (in-place)
    if [ -f "$DEVICE_PATH/$DEVICE/${ROM_NAME}_${DEVICE}.mk" ]; then
        sed -i "s/lineage/$ROM_NAME/g" "$DEVICE_PATH/$DEVICE/${ROM_NAME}_${DEVICE}.mk"
    fi

    # 3. Update text inside AndroidProducts.mk
    if [ -f "$DEVICE_PATH/$DEVICE/AndroidProducts.mk" ]; then
        sed -i "s/lineage/$ROM_NAME/g" "$DEVICE_PATH/$DEVICE/AndroidProducts.mk"
    fi

    # 4. Rename device dependencies
    if [ -f "$DEVICE_PATH/$DEVICE/lineage.dependencies" ]; then
        mv "$DEVICE_PATH/$DEVICE/lineage.dependencies" "$DEVICE_PATH/$DEVICE/${ROM_NAME}.dependencies"
    fi
done

# Process the common device tree
echo "Processing $COMMON_DT..."
if [ -f "$DEVICE_PATH/$COMMON_DT/lineage.dependencies" ]; then
    mv "$DEVICE_PATH/$COMMON_DT/lineage.dependencies" "$DEVICE_PATH/$COMMON_DT/${ROM_NAME}.dependencies"
fi

echo -e "\nDone!"