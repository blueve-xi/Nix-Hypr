{ inputs, config, pkgs, ... }:

{
  # Enable Cachix (https://wiki.hyprland.org/Nix/Cachix/)
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

#  # Enable hyprland (https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/)
#  programs.hyprland = {
#    enable = true;
#    # set the flake package
#    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
#    # make sure to also set the portal package, so that they are in sync
#    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
#    xwayland.enable = true;
#  };

  # Enable hyprland simple (https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/)
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Optional, hint electron apps to use wayland:
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # INSTALL PACKAGES
  environment.systemPackages = with pkgs; [
    kitty
    git
    yazi
    lazygit
    localsend
    zoxide
    oh-my-zsh
    oh-my-posh

    # Misc.
    ani-cli
    steam
    vscodium
    teams-for-linux
    gpu-screen-recorder-gtk
    vorta
    cava
    cmatrix
    fastfetch
    obsidian
    kdePackages.kdenlive
    libsForQt5.kdenlive
    # Emulators
    dolphin-emu
    pcsx2
    shadps4
    rpcs3
    ryujinx

    # Icons & Fonts
    gnome-icon-theme
    noto-fonts
    pkgs.whitesur-icon-theme
    pkgs.noto-fonts-cjk-sans
    pkgs.kanji-stroke-order-font
    pkgs.fira-code
    pkgs.font-awesome
    pkgs.cantarell-fonts
    # status bar
    waybar
    # notifications
    swaynotificationcenter

    # app launcher
    rofi-wayland
    wofi
    # Hyprland util
    hyprsunset
    hypridle
    hyprshot
    hyprlock
    hyprpaper
    swww
    waypaper
    rose-pine-hyprcursor
    # clipboard
    cliphist
    wl-clipboard
    # file manager
    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin
    gvfs
    file-roller
    yazi

    # logout menu
    wlogout
    # GNOME
    gnome-calendar
    gnome-software
    gnome-disk-utility
    udiskie
    nwg-look
    # QT themes stuff
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    kdePackages.qt6ct
    themechanger
    #kdePackages.qtstyleplugin-kvantum
    qt5.qtwayland
    qt6.qtwayland
    # XDG portal
    xdg-desktop-portal-hyprland
    # UTILS
    os-prober
    mount
    pavucontrol
    polkit_gnome
    pulsemixer
    hyprpicker
    hyprpolkitagent
    font-manager
    yubioath-flutter
    yubikey-manager-qt
    yubikey-touch-detector
    yubikey-personalization-gui
  ];

}
