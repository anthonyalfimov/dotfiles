# ===================
# Enable Powerline:
# ===================
export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/anton/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

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
export PATH=$PATH:/Applications/Utilities/CMake.app/Contents/bin

# ===============
# Enable Conda:
# ===============

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anton/dev/python/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anton/dev/python/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/anton/dev/python/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anton/dev/python/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<