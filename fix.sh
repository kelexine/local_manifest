#!/bin/bash

ANDROID_MK_PATH="build/make/target/board/Android.mk"
TARGET_PATTERN_LINE=104

# Check if the file exists
if [ -f "$ANDROID_MK_PATH" ]; then
    # Add '%' symbol to the target pattern at the specified line
    sed -i "${TARGET_PATTERN_LINE}s/\(target_pattern_without_percent_sign\)/\1%/" "$ANDROID_MK_PATH"
    echo "Successfully added '%' to the target pattern in $ANDROID_MK_PATH at line $TARGET_PATTERN_LINE"
else
    echo "Error: $ANDROID_MK_PATH does not exist."
fi
