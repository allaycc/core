return {
  name = "allay-unicornpkg-compat",
  version = "1.0.0",
  description = "Translator that lets allay read unicornpkg-format packages.",
  author = "alfa",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/allaycc/unicornpkg-compat/main",

  files = {
    translator = {
      ["init.lua"] = "unicornpkg.lua",
    },
  },
  hashes = {},
}
