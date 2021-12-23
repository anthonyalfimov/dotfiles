#-------------------------------------#
# Configuration for interactive usage #
#-------------------------------------#

# ===================
# Enable Powerline:
# ===================
. /Users/anton/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

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
autoload -Uz compinit && compinit

# ===============
# Enable Conda:
# ===============

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anton/dev/python/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

