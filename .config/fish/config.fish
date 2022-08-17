
# ====== path =============================================

set PATH ~/.fnm $PATH

# ====== functions ========================================

function refish -d "Reload fish config"
    source ~/.config/fish/config.fish
    echo "Reloaded fish config!"
end

function util -d "Print info about a utility"
    if command -qv $argv[1]
        echo $argv[1]: (which $argv[1])
        echo $argv[1]: (sh -c "$argv[1] --version")
    else
        echo "No command found."
    end
end

# ====== misc =============================================

if status is-interactive && not set -q TMUX && command -qv tmux
    exec tmux
end

if command -qv fnm
    fnm env | source
end

if command -qv exa
    alias l=exa
    alias ll='exa -l --icons'
    alias la='exa -la --icons'
else
    alias l=ls
end

alias notes='vi ~/.notes'

