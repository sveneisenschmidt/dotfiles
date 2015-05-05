dotfiles
========

config files for zsh, tmux, ...

## OS X

### Animationen deaktivieren
defaults write com.apple.dock expose-animation-duration -float 0
killall Dock

### Animationen aktivieren
defaults delete com.apple.dock expose-animation-duration
killall Dock