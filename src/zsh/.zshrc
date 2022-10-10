source ~/antigen.zsh

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

# Tell Antigen that you're done.
antigen apply

# pure theme
fpath+=(~/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
export PURE_PROMPT_SYMBOL=➜

export TERM=xterm-256color

unalias ls
unalias ll

alias ls="logo-ls -D"
alias ll="logo-ls -lDh"
