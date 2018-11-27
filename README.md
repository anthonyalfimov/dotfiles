# .dotfiles

My minimalistic and gradually expanding set of config files (OS X).

---

## Contents
These configs together with the installation instructions allow to setup the following:
- Powerline with powerline-gitstatus for bash
- Git command auto-completion
- Global `.gitignore` and `.gitattributes` files
- `.gitignore` generation from [gitignore.io](https://www.gitignore.io)
- Basic `.vimrc` and Vim plugins
- Basic `.bash_profile`
- "Open in Terminal" script for Xcode

---

## Installation checklist
Steps for installation on a clean machine:

1. Clone `.dotfiles` to home directory
2. Install Powerline-compatible font
3. Set user name and email for Git
4. Add gitignore.io alias
5. Add global gitignore and gitattributes files from `.dotfiles` to Git config
6. Install Powerline
7. Create symlinks to `.bash_profile` and `.vimrc` in home directory
8. Install powerline-gitstatus
9. Setup powerline-gitstatus and Powerline configs
10. Install Vim plugins (vim-airline, vim-fugitive)
11. Set up Xcode Terminal script

---

## Installation guide (WIP)

Before proceeding, make sure that you have Xcode or Xcode Command Line Tools installed.
To install the Command Line Tools only, run `$ xcode-select --install`.

### 1. Clone `.dotfiles` to home directory
```
$ git clone https://github.com/anthonyalfimov/dotfiles.git ~/.dotfiles
```

### 2. Install Powerline-compatible font
Download Hack font [here](https://sourcefoundry.org/hack/).

### 3. Set user name and email for Git
```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

### 4. Add gitignore.io alias
[gitignore.io](https://www.gitignore.io) is an online source for generating `.gitignore` files.
To make the file generation accessible via command line, register a command alias `ignore` with git:
```
$ git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi
```
To test the alias and print the output, run, e.g.:
```
$ git ignore macos,xcode
```

### 5. Add global gitignore and gitattributes files
Register the global ignore file with Git by running:
```
$ git config --global core.excludesfile ~/.dotfiles/.gitignore_global
```
Register the global attributes file with Git by running:
```
$ git config --global core.excludesfile ~/.dotfiles/.gitattributes_global
```

### 6. Install Powerline
First, install *pip* - a package manager for Python - by running:
```
$ sudo easy_install pip
```

Next, install *Powerline*:

```
$ pip install --user powerline-status
```

To find the location of *Powerline* run:
```
$ pip show powerline-status
```
and copy the path from the `Location:` field.

Now, open the `~/.dotfiles/.bash_profile` file. In the last line of
`Enable Powerline` section, replace the `/.../site-packages` part of the path
with the one you copied.

### 7. Create symlinks to `.bash_profile` and `.vimrc` in home directory
```
$ cd
$ ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
$ ln -s ~/.dotfiles/.vimrc ~/.vimrc
```

Restart the terminal (or run `$ source ~/.bash_profile`) to enable *Powerline*,
Git command tab-completion, custom aliases, and coloured output.

---

*...To be continued...*

---

## TO-DO
- [x] Add installation checklist
- [ ] Add full installation instructions
- [x] Add list of tools and features installed and configured by following the installation guide
- [ ] Add screenshots
- [ ] Automate the installation process
