# .dotfiles

My minimalistic and gradually expanding set of config files (OS X, zsh).

---

## Contents
These configs together with the [installation guide](#installation-guide)
allow to set up:
- Basic `.zshrc` and `.zshenv`
- Powerline with powerline-gitstatus for zsh
- Git command auto-completion
- Global `.gitignore` and `.gitattributes` files
- `.gitignore` generation from [gitignore.io](https://www.gitignore.io)
- "Open in Terminal" command for Xcode to open Terminal at the source code
folder for current project
- Basic `.vimrc` and Vim plugins

![powerline](https://user-images.githubusercontent.com/43878921/49591463-96be0b00-f97f-11e8-9f42-47cf4c5e605c.png)
![vim](https://user-images.githubusercontent.com/43878921/49591987-fcf75d80-f980-11e8-90ed-8ffaf0aadfaa.png)

---

## Installation checklist
1. [Clone `.dotfiles` to home directory](#1-clone-dotfiles-to-home-directory)
2. [Install Powerline-compatible font](#2-install-powerline-compatible-font)
3. [Add gitignore.io alias](#3-add-gitignoreio-alias)
4. [Add global gitignore and gitattributes files](#4-add-global-gitignore-and-gitattributes-files)
5. [Install Powerline](#5-install-powerline)
6. [Install Vim plugins](#6-install-vim-plugins)
7. [Create symlinks to `.zshenc`, `.zshrc`, and `.vimrc`](#7-create-symlinks-to-zshenv-zshrc-and-vimrc-in-home-directory)
8. [Install powerline-gitstatus](#8-install-powerline-gitstatus)
9. [Set up Xcode "Open in Terminal" command](#9-set-up-xcode-open-in-terminal-command)

---

## Installation guide

Before proceeding, make sure that you have Xcode or Xcode Command Line Tools installed.
To install the Command Line Tools only, run `$ xcode-select --install`.

### 1. Clone `.dotfiles` to home directory
```
$ git clone https://github.com/anthonyalfimov/dotfiles.git ~/.dotfiles
```

### 2. Install Powerline-compatible font
Download Hack font [here](https://sourcefoundry.org/hack/).

### 3. Add gitignore.io alias
[gitignore.io](https://www.gitignore.io) is an online source for generating `.gitignore` files.
To make the file generation accessible via command line, register a command alias `ignore` with git:
```
$ git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'
```
To test the alias and print the output, run, e.g.:
```
$ git ignore macos,xcode
```

### 4. Add global gitignore and gitattributes files
Register the global ignore file with Git by running:
```
$ git config --global core.excludesfile ~/.dotfiles/.gitignore_global
```
Register the global attributes file with Git by running:
```
$ git config --global core.excludesfile ~/.dotfiles/.gitattributes_global
```

### 5. Install Powerline
First, install pip - a package manager for Python - by running:
```
$ sudo easy_install pip
```

Next, install [Powerline](https://github.com/powerline/powerline):

```
$ pip install --user powerline-status
```

To find the location of Powerline run:
```
$ pip show powerline-status
```
and copy the path from the `Location:` field, e.g `/Users/<user>/Library/Python/2.7/lib/python/site-packages`.

Now, open the `~/.dotfiles/.zshrc` file. In the last line of
`Enable Powerline` section, replace the `/.../site-packages` part of the path
with the one you copied.

### 6. Install Vim plugins
Install [vim-airline](https://github.com/vim-airline/vim-airline) and
[vim-fugitive](https://github.com/tpope/vim-fugitive) Vim plugins for a
statusline with Git status (fast and written in Vim script).

### 7. Create symlinks to `.zshenv`, `.zshrc`, and `.vimrc` in home directory
```
$ cd
$ ln -s ~/.dotfiles/.zshenv ~/.zshenv
$ ln -s ~/.dotfiles/.zshrc ~/.zshrc
$ ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
```

Restart the terminal to enable Powerline, Git command tab-completion, custom aliases, and coloured output.

### 8. Install powerline-gitstatus
In order to add Git information to the Powerline prompt, install [Gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)
by running:
```
$ pip install --user powerline-gitstatus
```
To setup and activate the Gitstatus segment for Powerline, follow the
[installation instructions](https://github.com/jaspernbrouwer/powerline-gitstatus#installation),
or simply replace the file:
```
<Powerline_Location>/powerline/config_files/colorschemes/shell/default.json
```
with the supplied file:
```
.dotfiles/powerline/config_files/colorschemes/shell/default.json
```

and replace the file:
```
<Powerline_Location>/powerline/config_files/themes/shell/default.json
```
with:
```
.dotfiles/powerline/config_files/themes/shell/default.json
```

### 9. Set up Xcode "Open in Terminal" command
First, give the execution permission to the supplied script:
```
$ chmod +x ~/.dotfiles/open_terminal.sh
```

Now, in Xcode, go to “Preferences -> Behaviours” and click the “+” sign to
create a new one. Give it a name, like `Open Terminal`.

Select only the last checkbox, “Run”, and select the location of the script.

Click the “⌘” symbol to the right of your behaviour and select a new
keyboard shortcut for the behaviour, e.g.:
`Control Option Command T`

The behaviour can also be set to run after every build in "Scheme settings".

---

## TO-DO
- [x] Add description
- [x] Add full installation instructions
- [x] Add screenshots
- [ ] Automate the installation process
