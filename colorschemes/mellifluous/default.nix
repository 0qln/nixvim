{ lib, ... }:
let
  inherit (lib.nixvim) toLuaObject;
in
lib.nixvim.plugins.mkNeovimPlugin {
  name = "mellifluous";
  isColorscheme = true;
  package = "mellifluous-nvim";
  # The colorscheme option is set by the `setup` function.
  colorscheme = null;
  callSetup = false;

  maintainers = [ ];

  settingsOptions = {
  };

  extraConfig = cfg: {
    colorschemes.mellifluous.luaConfig.content = ''
      local mellifluous = require("mellifluous")
      mellifluous.setup(${toLuaObject cfg.settings})
      mellifluous.colorscheme()
    '';
  };
}
