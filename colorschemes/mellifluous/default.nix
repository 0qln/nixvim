{ lib, ... }:
let
  inherit (lib.nixvim) toLuaObject;
in
lib.nixvim.plugins.mkNeovimPlugin {
  name = "mellifluous";
  isColorscheme = true;
  package = "mellifluous-nvim";

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
