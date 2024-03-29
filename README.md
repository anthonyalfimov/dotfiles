# .dotfiles

My minimalistic set of config files (macOS, zsh).

---

## Contents
These configs together with the [installation guide](#installation-guide)
allow to set up:
- Basic `.zshrc` and `.zshenv`
- Git command auto-completion
- Global `.gitignore` and `.gitattributes` files
- `.gitignore` generation from [gitignore.io](https://www.gitignore.io)
- Custom macOS Terminal theme based on [gruvbox](https://github.com/morhetz/gruvbox)
- Custom Powerlevel10k theme for zsh inspired by [powerline-gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)
- Basic `.vimrc`, Vim plugins and Vim theme
- Custom Xcode theme
- "Open in Terminal" command for Xcode to open Terminal at the source code
folder for current project

![powerline](https://user-images.githubusercontent.com/43878921/152009952-3b5479e3-31ff-4631-84f6-4b97725155f0.png)
![vim](https://user-images.githubusercontent.com/43878921/152222046-a83896b8-3f46-4faf-b2af-675ff0e9fb94.png)
![xcode](https://user-images.githubusercontent.com/43878921/152170148-dde3ce9f-a060-4e92-8c9c-3a05f19e63b4.png)

---

## Installation checklist
1. [Clone `.dotfiles` to home directory](#1-clone-dotfiles-to-home-directory)
2. [Install Powerline-compatible font](#2-install-powerline-compatible-font)
3. [Add gitignore.io alias](#3-add-gitignoreio-alias)
4. [Add global gitignore and gitattributes files](#4-add-global-gitignore-and-gitattributes-files)
5. [Install macOS Terminal theme](#5-install-macos-terminal-theme)
6. [Install Powerlevel10k](#6-install-powerlevel10k)
7. [Install Vim plugins](#7-install-vim-plugins)
8. [Install Vim themes](#8-install-vim-themes)
9. [Create symlinks to `.zshenc`, `.zshrc`, and `.vimrc`](#9-create-symlinks-to-zshenv-zshrc-and-vimrc-in-home-directory)
10. [Install Xcode theme](#10-install-xcode-theme)
11. [Set up Xcode "Open in Terminal" command](#11-set-up-xcode-open-in-terminal-command)

---

## Installation guide

Before proceeding, make sure that you have Xcode or Xcode Command Line Tools installed.
To install the Command Line Tools only, run `$ xcode-select --install`.

### 1. Clone `.dotfiles` to home directory
```sh
git clone --depth 1 https://github.com/anthonyalfimov/dotfiles.git ~/.dotfiles
```

### 2. Install Powerline-compatible font
Download and install Hack font from [here](https://sourcefoundry.org/hack/) or run:
```sh
mkdir -p ~/.dotfiles/tmp
curl -L https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -o ~/.dotfiles/tmp/Hack.zip
unzip ~/.dotfiles/tmp/Hack -d ~/.dotfiles/tmp/
mkdir -p ~/Library/Fonts
cp ~/.dotfiles/tmp/ttf/Hack-*.ttf ~/Library/Fonts/
rm -rf ~/.dotfiles/tmp
```

### 3. Add gitignore.io alias
[gitignore.io](https://www.gitignore.io) is an online source for generating `.gitignore` files.
To make the file generation accessible via command line, register a command alias `ignore` with git:
```sh
git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'
```
To test the alias and print the output, run, e.g.:
```sh
git ignore macos,xcode
```

### 4. Add global gitignore and gitattributes files
Register the global ignore file with Git by running:
```sh
git config --global core.excludesfile ~/.dotfiles/.gitignore_global
```
Register the global attributes file with Git by running:
```sh
git config --global core.attributesfile ~/.dotfiles/.gitattributes_global
```

### 5. Install macOS Terminal theme
Add a [gruvbox](https://github.com/morhetz/gruvbox)-based profile to your macOS Terminal by running:
```sh
open ~/.dotfiles/terminal/gruvbox_macos.terminal
```
Open "Terminal -> Preferences", select "Gruvbox" profile and set it as Default.

### 6. Install Powerlevel10k
Clone Powerlevel10k to the specified directory:
```sh
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.zsh_themes/powerlevel10k
```
All necessary configuration to enable Powerlevel10k is already set up in the supplied `.zshrc`.

### 7. Install Vim plugins
Install [vim-airline](https://github.com/vim-airline/vim-airline) and
[vim-fugitive](https://github.com/tpope/vim-fugitive) Vim plugins for a
statusline with Git status (fast and written in Vim script):
```sh
git clone --branch v0.11 --depth 1 https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
git clone --branch v3.6 --depth 1 https://github.com/tpope/vim-fugitive.git ~/.vim/pack/dist/start/vim-fugitive
```
Generate help tags by running:
```sh
vim -c "helptags ~/.vim/pack/dist/start/vim-airline/doc" -c "helptags ~/.vim/pack/dist/start/vim-fugitive/doc" -c q
```

### 8. Install Vim themes

Install the custom "Darkbox" Vim colourscheme by running:
```sh
mkdir -p ~/.vim/colors/
cp ~/.dotfiles/vim/colors/darkbox.vim ~/.vim/colors/
```
Install the custom "Darkbox" vim-airline theme by running:
```sh
mkdir -p ~/.vim/autoload/airline/themes/
cp ~/.dotfiles/vim/autoload/airline/themes/darkbox.vim ~/.vim/autoload/airline/themes/
```

### 9. Create symlinks to `.zshenv`, `.zshrc`, and `.vimrc` in home directory
```sh
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
```

Restart the terminal to enable Powerlevel10k theme, Git command tab-completion, custom aliases, and coloured output.

### 10. Install Xcode theme
The custom "Darkbox" Xcode theme is inspired by the "Classic (Dark)" Xcode theme and the [gruvbox](https://github.com/morhetz/gruvbox) palette. To install the theme, run:
```sh
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
cp ~/.dotfiles/xcode/Darkbox.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
```

### 11. Set up Xcode "Open in Terminal" command
First, give the execution permission to the supplied script:
```sh
chmod +x ~/.dotfiles/xcode/open_terminal.sh
```

Now, in Xcode, go to “Preferences -> Behaviours” and click the “+” sign to
create a new one. Give it a name, like `Open Terminal`.

Select only the last checkbox, “Run”, and select the location of the script.

Click the “⌘” symbol to the right of your behaviour and select a new
keyboard shortcut for the behaviour, e.g.:
`Control Option Command T`

The behaviour can also be set to run after every build in "Scheme settings".

---

## TODO:
- [x] Add description
- [x] Add full installation instructions
- [x] Add screenshots
- [x] Add custom gruvbox-inspired theme for vim-airline
- [x] Add custom gruvbox-inspired theme for macOS terminal
- [ ] Automate the installation process
