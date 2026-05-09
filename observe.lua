return {
  name = "observe",
  version = "1.0.0",
  description = "Hook CC's fs API to track every file mutation made by code running in the observed env. Used by allay to wrap foreign installers and capture what they write.",
  author = "alfa",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/allaycc/lualibs/main",

  files = {
    lib = {
      ["observe/init.lua"] = "init.lua",
    },
  },
  hashes = {},

  dependencies = {
    "hash",
  },
}
