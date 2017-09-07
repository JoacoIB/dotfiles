source $HOME/.config/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle jump
antigen bundle cp
antigen bundle ubuntu
antigen bundle catimg

# list all recen ssh connections
antigen bundle gko/ssh-connect

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
BULLETTRAIN_PROMPT_ORDER=(time status custom context dir virtualenv git cmd_exec_time)

# Tell Antigen that you're done.
antigen apply

# Custom aliases and functions
alias j='jump'
alias lswc='ls | wc -l'

function cdls() {
  cd "$1" && ls "$1";
}

TERM=xterm-256color
