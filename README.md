# temp rm
> use rm at ease!  

###Don't talk, show me the effect picture:  
![trm](http://os6prdnzj.bkt.clouddn.com/github/md/rm1.JPG)

###With some easy settings, you can use the command `rm` at ease:  

    1. First, copy the file 'remove.sh' into your folder which pathinfo is $DIR ( e.g. '~/shell/' ).
    2. Open the file `~/.bashrc` or `~/.zshrc` or other one and add `alias rm='sh ~/shell/remove.sh'` in the end. If you don't know which shell is in use, try `echo $SHELL`.

Then, when you remove a file, it will be moved into the folder `$HOME/.trash`. Notice that when a file or folder in `$HOME/.trash` isn't visited for a month, it will be really removed from your disk when you use rm! You can alter the shell to change this yourself.

###You can also try this to make it avaliable:  
```
sh -c "$(wget --no-check-certificate https://raw.githubusercontent.com/lcalca1/trm/master/install_trm.sh -O -)"
```

After that if it still doesn't work, try `source $HOME"/."${SHELL##*/}"rc"`.
