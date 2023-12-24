[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

if [[ -f /usr/bin/prime-offload ]]; then
    /usr/bin/prime-offload
fi

start_config() {
    setxkbmap ie
}

start_utilities() {
    dunst &
    dropbox &
    udiskie &
    keepassxc &
}

start_wm() {
    exec i3
}

start_config
start_utilities
start_wm

if [[ -f /usr/bin/prime-switch ]]; then
    sudo /usr/bin/prime-switch
fi
