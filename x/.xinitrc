[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

start_config() {
    setxkbmap ie
}

start_utilities() {
    udiskie &
    dunst &
    dropbox &
    keepassxc &
}

start_wm() {
    exec i3
}

start_config
start_utilities
start_wm
