#/bin/bash
PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
MIUI_DIR=$PWD/miui

# copy files
cp -f $MIUI_DIR/file_contexts $TARGET_FILES_DIR/META/
# firmware-update
cp -r $MIUI_DIR/*.mbn $TARGET_FILES_DIR/META/
cp -r $MIUI_DIR/*.bin $TARGET_FILES_DIR/META/
cp -r $MIUI_DIR/reserve4.img $TARGET_FILES_DIR/META/
