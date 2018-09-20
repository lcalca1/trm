#!/bin/bash
PARA_CNT=$#
TRASH_DIR=$HOME"/.trash"
CURR_PATH=`pwd`
for i in $*; do
    STAMP=`date +%s`
    fileName=`basename $i`
    mv $i $TRASH_DIR/$fileName.$STAMP
    echo "Removed successfully,It can be recovered by 'mv "$TRASH_DIR/$fileName.$STAMP" "$fileName"'"
done
find $TRASH_DIR -atime +30 -exec rm -rf {} \;
