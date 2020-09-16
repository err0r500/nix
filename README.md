# nix

## basic usage 
Clone this repo

then create another file to set (for example) everything you need for your elm development

```
{pkgs ? import <nixpkgs> {}}:

let 
  elm-env = import <path-to-cloned-repo>/bundles/elm.nix pkgs;
in 
pkgs.mkShell {
  buildInputs = with pkgs; 
    elm-env 
    ++ [
      neovim
    ];
}
```

start a shell with
```
nix-shell <path-to-your-file>.nix
```
