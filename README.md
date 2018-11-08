# .dotfiles

My minimalistic and gradually expanding set of config files (OS X).

---

### Installation checklist
Steps for installation on a clean machine

- Clone `.dotfiles` to home directory
- Install Powerline-compatible font
- Install Xcode
- Set user name and email for Git
- Add gitignore.io alias
- Add global gitignore and gitattributes files from `.dotfiles` to Git config
- Install pip (package manager for Python):
- Install Powerline
- Modify path to Powerline in `.bash_profile`
- Create symlinks to `.bash_profile` and `.vimrc` in home directory
- Install powerline-gitstatus
- Set up powerline-gitstatus and Powerline configs
- Install Vim-airline
- Install Vim-fugitive
- Set up Xcode Terminal script

---

### Installation guide (WIP)

#### 1. Clone `.dotfiles` to home directory
```
$ git clone https://github.com/anthonyalfimov/dotfiles.git ~/.dotfiles
```

#### 2. Install Powerline-compatible font
Download Hack font [here](https://sourcefoundry.org/hack/).

#### 3. Install Xcode

#### 4. Set user name and email for Git
```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

#### 5. Add gitignore.io alias
[gitignore.io](https://www.gitignore.io) is an online source for generating `.gitignore` files.
To make the file generation accessible via command line, register a command alias `ignore` with git:
```
$ git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi
```
To test the alias and print the output run, e.g.:
```
$ git ignore macos,xcode
```

#### 6. Add global gitignore and gitattributes files
Register the global ignore file with Git by running:
```
$ git config --global core.excludesfile ~/.dotfiles/.gitignore_global
```
Register the global attributes file with Git by running:
```
$ git config --global core.excludesfile ~/.dotfiles/.gitattributes_global
```

#### 7. Install pip (package manager for Python)
```
$ sudo easy_install pip
```

#### 8. Install Powerline
```
$ pip install --user powerline-status
```

*...To be continued...*

---

### TO-DO
- [x] Add installation checklist
- [ ] Add full installation instructions
- [ ] Add screenshots
- [ ] Automate parts of the installation process
