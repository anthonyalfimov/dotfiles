#-------------------------------------#
# Configuration for interactive usage #
#-------------------------------------#

# =======================
# Enable Powerlevel10k:
# =======================
source ~/.zsh_themes/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k/p10k.zsh
[[ ! -f ~/.dotfiles/p10k/p10k.zsh ]] || source ~/.dotfiles/p10k/p10k.zsh

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
#__conda_setup="$('/Users/anton/dev/python/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/anton/dev/python/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/anton/dev/python/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/anton/dev/python/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

