# .dotfiles

My minimalistic and gradually expanding set of config files (OS X).

---

### Installation checklist
Steps for installation on a clean machine

- Clone `.dotfiles` to home directory
- Install [Hack font](https://sourcefoundry.org/hack/)
- Install Xcode
- Add user info to git config
- Add global gitignore and gitattributes files from `.dotfiles` to git config
- Install pip (package manager for Python):
- Install Powerline
- Modify path to Powerline in `.bash_profile`
- Create symlinks to `.bash_profile` and `.vimrc` in home directory
- Install powerline-gitstatus
- Set up powerline-gitstatus and Powerline configs
- Install Vim-airline
- Modify Vim-Airline default theme
- Install Vim-fugitive
- Set up Xcode Terminal script

---

### Installation guide (WIP)

#### 1. Install pip (package manager for Python)
```bash
sudo easy_install pip
```

#### 2. Install Powerline
```bash
pip install --user powerline-status
```

---

### TO-DO
- [x] Add installation checklist
- [ ] Add full installation instructions
- [ ] Automate parts of the installation process
