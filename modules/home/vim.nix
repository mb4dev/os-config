{...} : {
     programs.vim = { 
		enable = true; 
		defaultEditor = true; 
		settings = {
			tabstop = 6;
			shiftwidth = 6; 
			expandtab = false;

                };
              extraSettings = ``
                set tabstop=6
                set shiftwidth=6
                set softtabstop=6
                set noexpandtab   
              ``;

      
	};

}
