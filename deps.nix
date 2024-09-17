{ fetchurl }:

[
  {
    name = "spork";
    src = fetchurl {
      url = "https://github.com/janet-lang/spork/archive/253a67e89dca695632283ef60f77851311c404c9.tar.gz";
      hash = "sha256-oAIxARl8vOL7ULaDafLNywr/4yB7SBOUTEa983Mi2Qs=";
    };
    deps = [ ];
  }
  {
    name = "cmd";
    src = fetchurl {
      url = "https://github.com/ianthehenry/cmd/archive/b4308de361d0f90dd96cc0f9a8dc6881e0e851c6.tar.gz";
      hash = "sha256-Z6qj9M6Y1fYpxABYcm83SpRWL8nScrG+pxujB46X1Hs=";
    };
    deps = [ ];
  }
]
