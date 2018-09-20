# temp rm
> use rm at ease!  

With some easy settings, you can use the command `rm` at ease:
    1. First, copy the file 'remove.sh' into your folder which pathinfo is $DIR ( e.g. '~/shell/' ).
    2. Open the file `~/.bashrc` or `~/.zshrc` or other one and add `alias rm='sh ~/shell/remove.sh'` in the end. If you don't know which shell is in use, try `echo $SHELL`.
    3. Then, when you remove a file, it will be moved into the folder `$HOME/.trash`. Notice that when a file or folder in `$HOME/.trash` isn't visited for a month, it will be really removed from your disk when you use rm! You can alter the shell to change this yourself.

A `install.sh` is coming before long with more convenient config!
