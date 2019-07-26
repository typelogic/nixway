# C++ & Nix
After `nix-shell`, the below automatically is true:
- the include dir of every buildInput is added to -I automatically
- and the lib dir of every buildInput is added to -L automatically

Also, check `echo $NIX_CFLAGS_COMPILE`
