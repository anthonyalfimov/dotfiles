#-------------------------------------#
# Configuration for interactive usage #
#-------------------------------------#

# ===================
# Enable Powerline:
# ===================
. /Users/anthony/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

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