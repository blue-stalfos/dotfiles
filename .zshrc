source /usr/local/share/antigen/antigen.zsh
source $(dirname $(gem which colorls))/tab_complete.sh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle npm
# antigen bundle nyan
antigen bundle osx
antigen bundle ng
antigen bundle thefuck
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found

# Bundles from other repos
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle mafredri/zsh-async

# Load the theme
# antigen theme refined
# antigen bundle sindresorhus/pure
antigen bundle jackharrisonsherlock/common
antigen theme jackharrisonsherlock/common

# Tell Antigen that you're done.
antigen apply

# Command aliases
alias ls='colorls'
alias l='ls -la'
alias cat='bat'
alias ping='prettyping --nolegend'

# Enviroment variables
# export BAT_THEME="TwoDark"

