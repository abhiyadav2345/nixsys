{pkgs, ...}: {

  programs.thunderbird = {
    enable = true;
    profiles = {
      "abhishek yadav" = {
        isDefault = true;
      };
      "abhishekhack" = {
        isDefault= false;
      };
    };
  };

  # programs.neomutt = {
  #   enable = true;
  # };

  accounts.email.accounts = {
    "abhishek yadav" = {

      realName = "abhishek yadav";
      address = "abhiyadav2345@gmail.com";
      primary = true;
      flavor = "gmail.com";

      passwordCommand = "secret-tool lookup password gmail";

      neomutt = {
        enable = true;
      };

      thunderbird = {
        enable = true;
      };

      imapnotify = {
        enable = true;
        boxes = [ "Inbox" ];
      };

    };

    "abhishekhack" = {


      realName = "abhishek yadav";
      address = "abhishekhack@outlook.com";

      userName = "abhishekhack@outlook.com";

      imap = {
        host = "imap-mail.outlook.com";
        port = 993;
      };

      smtp = {
        host = "smtp-mail.outlook.com";
        port = 587;
        tls = {
          enable = true;
        };
      };
      passwordCommand = "${pkgs.libsecret}/bin/secret-tool lookup password abhishekhack";
      thunderbird = {
        enable = true;
      };
    };
  };
}
