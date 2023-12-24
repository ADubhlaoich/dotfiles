# zsh
## ssh-agent

I can't find the original StackExchange thread where I found the snippet, but the code block in the bottom half of `zsh.rc` is how I handle environment-specific ssh credentials. It checks if `ssh-agent` is running already or not based on an agent file, kills it if it's stale and then starts a new one. Typically part of my set-up is running `touch ~/.envrc`. 

Once that file exists, I throw any ssh credentials I want the machine to to use into the file line by line via `ssh-add`.

```
ssh-add /home/user/.ssh/github
ssh-add /home/user/.ssh/somevm
ssh-add /home/user/.ssh/anotherhost
```

This set-up is pretty simple, and doesn't involve managing a GNOME keyring like some other solutions I've found online.