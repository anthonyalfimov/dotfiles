# .dotfiles

My minimalistic and gradually expanding set of config files (OS X).

---

### Installation checklist
Steps for installation on a clean machine

- Clone `.dotfiles` to home directory
- Install Powerline-compatible font
- Install Xcode
- Set user name and email for Git
- Add global gitignore and gitattributes files from `.dotfiles` to git config
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
```git
$ git clone https://github.com/anthonyalfimov/dotfiles.git ~/.dotfiles
```

#### 2. Install Powerline-compatible font
Download Hack font [here](https://sourcefoundry.org/hack/).

#### 3. Install Xcode

#### 4. Set user name and email for Git
```git
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```


#### n. Install pip (package manager for Python)
```bash
$ sudo easy_install pip
```

#### n+1. Install Powerline
```bash
$ pip install --user powerline-status
```

---

### TO-DO
- [x] Add installation checklist
- [ ] Add full installation instructions
- [ ] Automate parts of the installation process
