#!/bin/bash
SHELL_DIR=$HOME"/shell/"
echo -e "#!/bin/bash\nPARA_CNT=\$#\nTRASH_DIR=\$HOME\"/.trash\"\nCURR_PATH=\`pwd\`\nif [ ! -d \$TRASH_DIR ];then\n\tmkdir \$TRASH_DIR\nfi\nfor i in \$*; do\n\tSTAMP=\`date +%s\`\n\tfileName=\`basename \$i\`\n\tmv \$i \$TRASH_DIR/\$fileName.\$STAMP\n\techo \"Removed successfully,It can be recovered by 'mv \"\$TRASH_DIR/\$fileName.\$STAMP\" \"\$fileName\"'\"\ndone\nfind \$TRASH_DIR -maxdepth 1 -atime +30 -exec rm -rf {} \;" > $SHELL_DIR"remove.sh"
echo "alias rm='sh "$SHELL_DIR"remove.sh'" >> $HOME"/."${SHELL##*/}"rc"
source $HOME"/."${SHELL##*/}"rc"
