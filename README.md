# .dotfiles

My minimalistic set of config files (macOS, zsh).

---

## Contents
These configs together with the [installation guide](#installation-guide)
allow to set up:
- Basic `.zshrc` and `.zshenv`
- Custom Powerlevel10k theme for zsh inspired by [powerline-gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)
- Git command auto-completion
- Global `.gitignore` and `.gitattributes` files
- `.gitignore` generation from [gitignore.io](https://www.gitignore.io)
- Basic `.vimrc` and Vim plugins
- "Open in Terminal" command for Xcode to open Terminal at the source code
folder for current project

![powerline](https://user-images.githubusercontent.com/43878921/152009952-3b5479e3-31ff-4631-84f6-4b97725155f0.png)
![vim](https://user-images.githubusercontent.com/43878921/152010307-f4581287-42a9-43ee-a463-5a2565003f8c.png)

---

## Installation checklist
1. [Clone `.dotfiles` to home directory](#1-clone-dotfiles-to-home-directory)
2. [Install Powerline-compatible font](#2-install-powerline-compatible-font)
3. [Add gitignore.io alias](#3-add-gitignoreio-alias)
4. [Add global gitignore and gitattributes files](#4-add-global-gitignore-and-gitattributes-files)
5. [Install Powerlevel10k](#5-install-powerlevel10k)
6. [Install Vim plugins](#6-install-vim-plugins)
7. [Create symlinks to `.zshenc`, `.zshrc`, and `.vimrc`](#7-create-symlinks-to-zshenv-zshrc-and-vimrc-in-home-directory)
8. [Set up Xcode "Open in Terminal" command](#8-set-up-xcode-open-in-terminal-command)

---

## Installation guide

Before proceeding, make sure that you have Xcode or Xcode Command Line Tools installed.
To install the Command Line Tools only, run `$ xcode-select --install`.

### 1. Clone `.dotfiles` to home directory
```
git clone --depth 1 https://github.com/anthonyalfimov/dotfiles.git ~/.dotfiles
```

### 2. Install Powerline-compatible font
Download Hack font [here](https://sourcefoundry.org/hack/).

### 3. Add gitignore.io alias
[gitignore.io](https://www.gitignore.io) is an online source for generating `.gitignore` files.
To make the file generation accessible via command line, register a command alias `ignore` with git:
```
git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'
```
To test the alias and print the output, run, e.g.:
```
git ignore macos,xcode
```

### 4. Add global gitignore and gitattributes files
Register the global ignore file with Git by running:
```
git config --global core.excludesfile ~/.dotfiles/.gitignore_global
```
Register the global attributes file with Git by running:
```
git config --global core.excludesfile ~/.dotfiles/.gitattributes_global
```

### 5. Install Powerlevel10k
Clone Powerlevel10k to the specified directory:
```
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.zsh_themes/powerlevel10k
```
All necessary configuration to enable Powerlevel10k is already set up in the supplied `.zshrc`.

### 6. Install Vim plugins
Install [vim-airline](https://github.com/vim-airline/vim-airline) and
[vim-fugitive](https://github.com/tpope/vim-fugitive) Vim plugins for a
statusline with Git status (fast and written in Vim script):
```
git clone --depth 1 https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
git clone --depth 1 https://github.com/tpope/vim-fugitive.git ~/.vim/pack/dist/start/vim-fugitive
```
Open Vim and run `:helptags ~/.vim/pack/dist/start/vim-airline/doc` and `:helptags ~/.vim/pack/dist/start/vim-fugitive/doc` to generate help tags.

### 7. Create symlinks to `.zshenv`, `.zshrc`, and `.vimrc` in home directory
```
cd
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
```

Restart the terminal to enable Powerlevel10k theme, Git command tab-completion, custom aliases, and coloured output.

### 8. Set up Xcode "Open in Terminal" command
First, give the execution permission to the supplied script:
```
chmod +x ~/.dotfiles/open_terminal.sh
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
- [ ] Add custom gruvbox-inspired theme for vim-airline
- [ ] Automate the installation process
