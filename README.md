# C++ & Nix
After `nix-shell`, the below automatically is true:
- the include dir of every buildInput is added to -I automatically
- and the lib dir of every buildInput is added to -L automatically

Also, check `echo $NIX_CFLAGS_COMPILE`

# Poco/Boost C++
In your shell manually run, `nix-shell -p gcc boost poco`
Then compile `prog.cpp` by: `c++ -o prog prog.cpp -lPocoFoundation -lboost_system`

TIP: Running `./prog` can be done even outside of `nix-shell`

Another way, using `default.nix` is by running from the shell: `nix-build`. The
executable output is in `result` symlink folder
