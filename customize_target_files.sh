#/bin/bash
PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
MIUI_DIR=$PWD/miui

# remove all odexs
find $TARGET_FILES_DIR -name "*.odex" |xargs rm -rf

# copy files
cp -f $MIUI_DIR/file_contexts $TARGET_FILES_DIR/META/

# firmware-update
cp -r $MIUI_DIR/emmc_appsboot.mbn $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/logo.bin $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/NON-HLOS.bin $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/reserve4.img $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/rpm.mbn $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/sbl1.mbn $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/static_nvbk.bin $TARGET_FILES_DIR/BOOTABLE_IMAGES/
cp -r $MIUI_DIR/tz.mbn $TARGET_FILES_DIR/BOOTABLE_IMAGES/
