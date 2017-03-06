source /usr/share/zsh/scripts/antigen/antigen.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters

alias startkde='startx ~/.xinitrc kde'
alias starti3='startx ~/.xinitrc i3'

alias rm='rm -f'
alias pacman='sudo pacman'
alias eterm='emacs -nw'
alias btctl='bluetoothctl'
alias sd0='shutdown -t 0'

# volume
alias vol="alsamixer"
MASTER="amixer -q -c 0 sset Master playback"
alias vup="$MASTER 2dB+"
alias vdn="$MASTER 2dB-"
alias mute="echo \" Audio muted.\"; $MASTER mute"
alias play="echo \" Audio un-muted.\"; $MASTER unmute"
alias unmute="play"
alias stop="mute"
v () {
    amixer -q sset Master playback $1%
}


clear
echo "\n\n"
screenfetch
echo "\n\n"

PATH="/home/firgaty/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/firgaty/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/firgaty/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/firgaty/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/firgaty/perl5"; export PERL_MM_OPT;
