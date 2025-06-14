{ ... }: 

{
  nixpkgs.config.chromium = {
    enableWideVine = true;
  };
}
