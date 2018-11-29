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
- "Open in Terminal" command for Xcode to open Terminal at the source code
folder for current project

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

Now, open the `~/.dotfiles/.bash_profile` file. In the last line of
`Enable Powerline` section, replace the `/.../site-packages` part of the path
with the one you copied.

### 7. Install Vim plugins
Install [vim-airline](https://github.com/vim-airline/vim-airline) and
[vim-fugitive](https://github.com/tpope/vim-fugitive) Vim plugins for a
statusline with Git status (fast and written in Vim script).

### 8. Create symlinks to `.bash_profile` and `.vimrc` in home directory
```
$ cd
$ ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
$ ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
```

Restart the terminal (or run `$ source ~/.bash_profile`) to enable Powerline,
Git command tab-completion, custom aliases, and coloured output.

### 9. Install powerline-gitstatus
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

### 10. Set up Xcode "Open in Terminal" command
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
- [x] Add full installation instructions
- [x] Add list of tools and features installed and configured by following the installation guide
- [ ] Add screenshots
- [ ] Automate the installation process
