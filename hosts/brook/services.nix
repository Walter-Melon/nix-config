{ ... }: 

{
  services = {
    openssh.enable = true;
    
    xserver = {
      enable = false;
      xkb.layout = "de";
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
