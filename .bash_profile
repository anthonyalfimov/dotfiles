# ===================
# Enable Powerline:
# ===================
export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/anton/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

# =====================================
# Enable Ruby gems in home directory:
# =====================================
#export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin

# ==========
# Aliases:
# ==========

# long list command with units for file sizes, showing all files
alias ll='ls -lhA'

# list all files
alias lsa='ls -A'

# =========================
# Enable coloured output:
# =========================
export CLICOLOR=1

# ============================
# Enable Git auto-completion:
# ============================
source ~/.dotfiles/git-completion.bash

# ===============
# Enable CMake:
# ===============
#export PATH=$PATH:/Applications/Utilities/CMake.app/Contents/bin
