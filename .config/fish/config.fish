set -gx GOPATH "$HOME/go"
set -gx PATH $PATH $GOPATH/bin

set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx PATH "/usr/local/go/bin" $PATH
set -gx PATH "$HOME/.local/bin/julia-1.7.2/bin" $PATH

if command -qv exa
    alias l=exa
    alias ll='exa -l'
    alias la='exa -la'
else
    alias l=ls
end

alias notes='vi ~/.notes'

alias vi=nvim
alias vim=nvim

