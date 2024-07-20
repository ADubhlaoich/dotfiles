# ADubhlaoich's dotfiles

These are my dotfiles for most of the software I use on a daily basis.

I'm currently running Arch Linux: I can see myself swapping to NixOS in the future.

I use [GNU Stow](https://github.com/ADubhlaoich/dotfiles) to manage my files.

```shell
# Create symlink for a program
stow <folder-name>
# Remove symlink for a program
stow -D <folder-name>
```

The `scripts/` folder contains small scripts I could probably symlink to my path.
