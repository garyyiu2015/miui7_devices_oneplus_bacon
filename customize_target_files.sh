#/bin/bash
PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
MIUI_DIR=$PWD/miui

# remove all odexs
find $TARGET_FILES_DIR -name "*.odex" |xargs rm -rf
