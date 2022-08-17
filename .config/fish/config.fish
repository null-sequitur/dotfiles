
# ====== path =============================================

set PATH ~/.fnm $PATH

# ====== functions ========================================

function refish --description "Reload fish config"
    source ~/.config/fish/config.fish
    echo "Reloaded fish config!"
end

# ====== misc =============================================

if status is-interactive && command -qv tmux && not set -q TMUX
    exec tmux
end

if command -qv fnm
    fnm env | source
end

if command -qv exa
    alias l=exa
    alias ll='exa -l'
    alias la='exa -la'
else
    alias l=ls
end

alias notes='vi ~/.notes'



