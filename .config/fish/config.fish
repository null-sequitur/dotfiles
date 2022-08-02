# ====== functions ========================================

function refish --description "Reload fish config"
    source ~/.config/fish/config.fish
    echo "Reloaded fish config!"
end

# ====== misc =============================================

if command -qv exa
    alias l=exa
    alias ll='exa -l'
    alias la='exa -la'
else
    alias l=ls
end

alias notes='vi ~/.notes'



