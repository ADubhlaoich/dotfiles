{ config, pkgs, ... }: 

{
  home.stateVersion = "24.05";
  home.username = "adubhlaoich";
  home.homeDirectory = "/home/adubhlaoich";
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.packages = with pkgs; [
    stow
    udiskie
    yazi
    ueberzugpp
    ffmpeg
    poppler
    zathura
    jq
    fd
    ripgrep
    fzf
    zoxide
    rsync
    moc
    beets
    sway
    swayidle
    fuzzel
    cliphist
    waybar
    way-displays
    pavucontrol
    dunst
    grim
    slurp
    wl-clipboard
    nautilus
    p7zip
    yt-dlp
    mpv
    xdg-utils
    simple-scan
    dropbox
    keepassxc
    firefox
    google-chrome
    obsidian
    standardnotes
    vscode
    docker-compose
    gimp
    figma-linux
    mixxx
    discord
    signal-desktop
    slack
  ];  

  fonts.fontconfig.enable = true;
  services.ssh-agent.enable = true;
  services.udiskie = {
    enable = true;
    automount = true;
    notify = true;
  };

  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
	  family = "Fira Mono";
	};
	size = 13;
      };
    };
  };

  programs.neovim = {
    enable = true;
    viAlias= true;
    vimAlias= true;
  };

}
