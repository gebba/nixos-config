{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim # Imports the actual Home Manager module for nixvim
  ];

  programs.nixvim = {
    enable = true; # This tells nixvim to install and manage Neovim
    viAlias = true;
    vimAlias = true;

    opts = {
      number = true;
      #relativenumber = true;
      shiftwidth = 2;
      expandtab = true;
    };

    #keymaps = [];

    plugins = {
      lightline.enable = true;
      rustaceanvim.enable = true;
      fidget.enable = true;
      #rust-tools.enable = true;
      #lsp.servers.rust-analyzer.enable = true;
      #lsp.servers.rust-analyzer.installCargo = false;
      #lsp.servers.rust-analyzer.installRustc = false;
    };

    colorschemes.gruvbox.enable = true;

    extraPlugins = with pkgs.vimPlugins; [
      vim-nix
    ];
  };
}
