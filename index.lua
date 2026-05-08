return {
  spec = "allay/v1.0.0",
  format = "allay",
  name = "alfaoz/allay-core",
  description = "Default source for allay. Ships allay's own libraries and a small set of curated packages.",
  homepage = "https://github.com/alfaoz/allay",

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

    -- allay itself, so `allay update` can update allay.
    allay = {
      version = "0.1.0",
      description = "The allay package manager (so it can update itself)",
    },
  },
}
