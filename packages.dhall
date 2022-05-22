let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.0-20220522/packages.dhall
        sha256:43895efaec7af246b60b59cfbf451cd9d3d84a5327de8c0945e2de5c9fd2fcf2

let overrides = {=}

let additions = {=}

in  upstream // overrides // additions
