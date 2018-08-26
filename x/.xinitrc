[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

udiskie &
dropbox &
keepassxc &
exec i3
