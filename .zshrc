source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle npm
antigen bundle nyan
antigen bundle osx
antigen bundle ng
antigen bundle thefuck
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found

# Bundles from other repos
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load official Pure theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Load the theme.
# antigen theme refined

# Tell Antigen that you're done.
antigen apply
