nixPkgs:
let 
  altPkgs = import ../default.nix nixPkgs;
in
    with altPkgs; [ 
      altPkgs.elm_0_19_1
      nixPkgs.elmPackages.elm-language-server
    ]

