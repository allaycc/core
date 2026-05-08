return {
  name = "hash",
  version = "1.0.0",
  description = "SHA-256 and HMAC-SHA256 in pure Lua. FIPS 180-4 / RFC 4231 validated.",
  author = "alfa",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/allaycc/lualibs/main",

  files = {
    lib = {
      ["hash/init.lua"] = "init.lua",
    },
  },
  -- Hashes are populated after the first release tag. Until then,
  -- TOFU on first install.
  hashes = {},
}
