return {
  spec = "allay/v1.0.0",
  format = "allay",
  name = "allaycc/core",
  description = "Default source for allay. Ships allay's own libraries and a small set of curated packages.",
  homepage = "https://github.com/allaycc/allay",

  packages = {
    -- allay's own runtime deps. Anyone using allay already has these,
    -- but they're listed for explicit installation and updates.
    hash = {
      version = "1.0.0",
      description = "SHA-256 and HMAC-SHA256 in pure Lua",
    },
    httpkit = {
      version = "1.0.0",
      description = "HTTP fetching with retries and timeout",
    },
    pathkit = {
      version = "1.0.0",
      description = "Atomic file writes and path helpers",
    },
    log = {
      version = "1.0.0",
      description = "Leveled logger with color support",
    },
    argparse = {
      version = "1.0.0",
      description = "Command-line argument parser",
    },
    levenshtein = {
      version = "1.0.0",
      description = "Edit-distance for typo suggestions",
    },
    ui = {
      version = "1.0.0",
      description = "Terminal output helpers: color, confirm, with_spinner",
    },
    scout = {
      version = "1.0.0",
      description = "Walk a GitHub repo and synthesize an installable package",
    },

    -- allay itself, so `allay update` can update allay.
    allay = {
      version = "0.1.0",
      description = "The allay package manager (so it can update itself)",
    },

    -- The unicornpkg compat translator. Shipped by default in the bootstrap
    -- but listed here so `allay update` can refresh it.
    ["allay-unicornpkg-compat"] = {
      version = "1.0.0",
      description = "Translator for reading unicornpkg-format packages.",
    },
  },
}
