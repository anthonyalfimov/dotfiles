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

