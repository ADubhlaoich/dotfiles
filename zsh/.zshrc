function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

setopt extended_history
setopt share_history
setopt append_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_verify

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

alias vim=nvim

path+=~/.local/bin

export EDITOR=nvim
export PATH
export LC_CTYPE=en_US.UTF-8
