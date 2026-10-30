{ pkgs, ... } : {
    programs.neovim = {
        enable = true;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;

        plugins = with pkgs.vimPlugins; [
	        telescope-nvim
        	plenary-nvim
            indent-blankline-nvim

            neo-tree-nvim
            nui-nvim
            nvim-web-devicons
            toggleterm-nvim
            
            nvim-treesitter.withAllGrammars
        ];

    #    extraPackages = with pkgs; [
    #        vimPlugins.nvim-treesitter.withAllGrammars
    #    ];
    #extraPackages = with pkgs; [
	#ripgrep

    #];
    };
    xdg.configFile."nvim/init.lua".source = ../../files/nvim/init.lua;  
    xdg.configFile."nvim/lua".source = ../../files/nvim/lua;
}
