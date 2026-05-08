return {
  name = "allay",
  version = "0.1.0",
  description = "The allay package manager itself, installable as a package so it can update.",
  author = "alfa",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/allaycc/allay/main",

  files = {
    bin = {
      ["bin/allay.lua"] = "allay",
    },
    lib = {
      ["lib/source.lua"]                  = "source.lua",
      ["lib/index.lua"]                   = "index.lua",
      ["lib/schema.lua"]                  = "schema.lua",
      ["lib/pkg.lua"]                     = "pkg.lua",
      ["lib/lockfile.lua"]                = "lockfile.lua",
      ["lib/resolver.lua"]                = "resolver.lua",
      ["lib/installer.lua"]               = "installer.lua",
      ["lib/translator.lua"]              = "translator.lua",
      ["lib/transport/init.lua"]          = "transport/init.lua",
      ["lib/transport/https.lua"]         = "transport/https.lua",
      ["lib/transport/disk.lua"]          = "transport/disk.lua",
    },
    raw = {
      ["setup.lua"] = "/usr/allay/setup.lua",
    },
  },
  hashes = {},

  dependencies = {
    "hash",
    "httpkit",
    "pathkit",
    "log",
    "argparse",
    "levenshtein",
    "ui",
    "scout",
  },
}
