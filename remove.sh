#!/bin/bash
PARA_CNT=$#
TRASH_DIR=$HOME"/.trash"
CURR_PATH=`pwd`

if [ ! -d $TRASH_DIR ];then
    mkdir $TRASH_DIR
fi

for i in $*; do
    STAMP=`date +%s`
    fileName=`basename $i`
    mv $i $TRASH_DIR/$fileName.$STAMP
    echo "Removed successfully,It can be recovered by 'mv "$TRASH_DIR/$fileName.$STAMP" "$fileName"'"
done

find $TRASH_DIR -maxdepth 1 -atime +30 -exec rm -rf {} \;
