{ lib, ... }:
with lib;
nixvim.plugins.mkNeovimPlugin {
  name = "mellifluous";
  isColorscheme = true;
  package = "mellifluous-nvim";
  colorscheme = "mellifluous";
  maintainers = [ ];
}
