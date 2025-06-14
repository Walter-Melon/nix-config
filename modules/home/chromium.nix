{ ... }: 

{
  programs.chromium = {
    enable = true;

    extensions = [
      { id = "aeblfdkhhhdcdjpifhhbdiojplfjncoa"; } # 1Password
      { id = "hnmpcagpplmpfojmgmnngilcnanddlhb"; } # Windscribe
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; } # SponsorBlock
    ];
  };
}
