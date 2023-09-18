{ config, pkgs, inputs, ... }:

{

  imports = [
    ./alacritty.nix
    ./kitty.nix
    ./fish.nix
    ./gtk.nix
    ./tmux.nix
    ./mimeApps.nix
    ./starship.nix
    ./vscode.nix
    ./chromium.nix
    # ./picom.nix
    ./nvim
    ./xmobar
    ./xmonad
    ./firefox
    ./qtile
    ./hyprland.nix
    ./accounts.nix
    ./qt.nix
    ./bash.nix
    ./rofi.nix
    ./waybar.nix
    ./wlogout.nix
    ./swaylock.nix

  ];


  home = {
    username = "rohits";
    homeDirectory = "/home/rohits";
    stateVersion = "22.11";

    packages = with pkgs; [
      # brave
      bitwarden
      neofetch
      discord
      rnix-lsp
      killall
      fantasque-sans-mono # Maybe should not be here
      (nerdfonts.override { fonts = [ "FiraCode" ]; })
      dmenu
      pavucontrol
      xclip
      wl-clipboard
      xdotool
      whatsapp-for-linux
      brightnessctl
      gnome.gnome-tweaks
      gnomeExtensions.dash-to-dock
      exercism
      ranger
      screenfetch
      cowsay

      # Process monitor
      procs

      ## Disk
      filelight
      gdu

      ## Sound
      pulseaudio

      ## Notifications
      dunst
      libnotify

      ## Wayland only
      clipman
      swaybg
      swappy
      grim
      slurp
    ];


    file = {
      ".config/wall".source = config.lib.file.mkOutOfStoreSymlink ../wall;
    };

  };

  services = {
    network-manager-applet.enable = true;
    kdeconnect = {
      enable = true;
      indicator = true;
    };

    blueman-applet = {
      enable = true;
    };

    flameshot = {
      enable = true;
      # settings = {
      #   General = {
      #     showStartupLaunchMessage = true;
      #     # showDesktopNotification = true;
      #     savePath = "/home/rohits/Pictures";
      #   };
      # };
    };
  };



  programs = {

    # Let Home Manager install and manage itself.
    home-manager.enable = true;

    bat = {
      enable = true;
    };

    eza = {
      enable = true;
      enableAliases = false;
      git = true;
      icons = true;
      extraOptions = [
        "--color=always"
        "--group-directories-first"
        "--icons"
      ];
    };

    # doom-emacs = {
    #   enable = true;
    #   doomPrivateDir = ./doom.d; # Directory containing your config.el, init.el
    #   # and packages.el files
    # };



    htop = {
      enable = true;
    };



    git = {
      enable = true;
      userName = "Rohit Singh";
      userEmail = "RohitSinghEmail@protonmail.com";
    };


    micro = {
      enable = true;
      settings = {
        colorscheme = "simple";
      };
    };

    feh = {
      enable = true;
      keybindings = {
        prev_img = [
          "h"
          "Left"
        ];
        zoom_in = "plus";
        zoom_out = "minus";
      };
    };

    direnv = {
      enable = true;
      # enableBashIntegration = true;
      # enableFishIntegration = true;
      nix-direnv = {
        enable = true;
      };
    };



  };




  fonts = {
    fontconfig = {
      enable = true;
    };
  };


  # wayland = {
  #   windowManager = {
  #     hyprland = {
  #       enable = true;
  #     };
  #   };
  # };
  #


}
