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

if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
	source ~/.envrc
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    source ~/.envrc
fi

path+=~/.local/bin

export EDITOR=nvim
export PATH
export LC_CTYPE=en_US.UTF-8

eval "$(starship init zsh)"
. "$HOME/.cargo/env"
