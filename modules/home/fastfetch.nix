{pkgs, ...} : {	

  home.packages = [
    pkgs.fastfetch
  ];

  xdg.configFile."fastfetch/config.jsonc".text = ''
    {
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json",
    "logo": null,
    "modules": [
      "title",
      "separator",
      "os",
      "host",
      "kernel",
      "uptime",
      "packages",
      "shell",
      "theme",
      "icons",
      "terminal",
      "cpu",
      "gpu",
      "memory",
      "disk",
      "battery",
      "localip",
      "break",
     "colors"
    ]
  } '';    
}
