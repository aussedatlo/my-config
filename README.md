# :computer: my config

## shell configuration

### install zsh

```bash
sudo apt install zsh
```

### change default shell

```bash
chsh
```

### install antigen & ohmyzsh

[![Github badge](https://img.shields.io/badge/Github-antigen-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/zsh-users/antigen)
[![Github badge](https://img.shields.io/badge/Github-ohmyzsh-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/ohmyzsh/ohmyzsh)

```bash
curl -L git.io/antigen > ~/antigen.zsh
```

add in `~/.zshrc`:
```bash
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
```

### install pure theme

[![Github badge](https://img.shields.io/badge/Github-pure-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/sindresorhus/pure.git)

```bash
mkdir ~/.zsh
cd ~/.zsh
git clone https://github.com/sindresorhus/pure.git
```

add in `~/.zshrc`:
```bash
# pure theme
fpath+=(~/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
export PURE_PROMPT_SYMBOL=➜
```

### install logo-ls & nerd-font

[![Github badge](https://img.shields.io/badge/Github-logo--ls-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/Yash-Handa/logo-ls)
[![Github badge](https://img.shields.io/badge/Github-nerd--fonts-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/ryanoasis/nerd-fonts.git)

download latest `.deb` [here](https://github.com/Yash-Handa/logo-ls/releases)

install dependencies:

```bash
cd ~/.zsh
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
```

add in `~/.zshrc`
```bash
export TERM=xterm-256color

unalias ls
unalias ll

alias ls="logo-ls -D"
alias ll="logo-ls -lDh"
```

## KDE

### Konsole

```bash
cp src/konsole/MoeDark-custom.colorscheme ~/.local/share/konsole
```

font: `JetBrainsMono Nerd Font Mono`

### Papyrus icons

[![Github badge](https://img.shields.io/badge/Github-papirus--icon--theme-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
[![Github badge](https://img.shields.io/badge/Github-papirus--folders-informational?style=flat&logo=github&logoColor=white&color=blue)](https://github.com/PapirusDevelopmentTeam/papirus-folders)

```bash
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh
wget -qO- https://git.io/papirus-folders-install | env PREFIX=$HOME/.local sh
papirus-folders -C bluegrey --theme Papirus-Dark
```