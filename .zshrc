
alias tmux="tmux -2"

if [[ ! $TERM =~ screen ]]; then
    exec tmux -2
fi

compctl -g '~/.teamocil/*(:t:r)' teamocil
