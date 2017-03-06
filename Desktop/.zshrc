source ~/build-repos/antigen/antigen.zsh

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

antigen bundle kennethreitz/autoenv
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bureau

# Tell antigen that you're done.
antigen apply

# Aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

alias startkde='startx ~/.xinitrc startkde'
alias starti3='startx ~/.xinitrc i3'

alias sd0='sudo shutdown -t 0'
alias pacman='sudo pacman'

# Others
screenfetch

antigen version
