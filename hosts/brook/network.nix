{ ... }: {
  networking = {
    hostName = "brook";

    networkmanager = {
      enable = true;
    };
  };
}
