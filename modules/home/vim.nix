{...} : {
     programs.vim = { 
		enable = true; 
		defaultEditor = true; 
	
            extraConfig = ''
              set tabstop=6
              set shiftwidth=6
              set softtabstop=6
              set noexpandtab   
            '';

      
	};

}
