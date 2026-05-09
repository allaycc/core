# allay-core

The default source for [allay](https://github.com/allaycc/allay). Ships
allay's own runtime libraries, a few CLI helpers, the unicornpkg-format
translator, and allay itself — all installable as packages.

After `wget run`-ing allay's bootstrap, this source is added by default.
You don't need to install anything from here manually unless you want to
update.

## Adding allay-core to a fresh allay install

It's already there. Run `allay source list` to confirm.

## Available packages

Allay's own runtime dependencies (everything `allay` itself needs):

| Package       | What it is                                                  |
|---------------|-------------------------------------------------------------|
| `hash`        | SHA-256 and HMAC-SHA256 in pure Lua                         |
| `httpkit`     | HTTP fetching with retries and timeout                      |
| `pathkit`     | Atomic file writes and path helpers                         |
| `log`         | Leveled logger with color support                           |
| `argparse`    | Subcommand-style argument parser                            |
| `levenshtein` | Edit-distance for did-you-mean suggestions                  |
| `ui`          | Terminal output helpers: color, confirm, with_spinner       |
| `scout`       | Walk a GitHub repo and synthesize an installable package    |

allay itself, plus extensions:

| Package     | What it is                                                   |
|-------------|--------------------------------------------------------------|
| `allay`     | The allay package manager (so `allay update allay` works)    |
| `alicorn`   | Translator that lets allay read unicornpkg-format packages   |

## Layout

```
.
├── index.lua              ← source manifest (lists every package above)
├── hash.lua               ← per-package definitions
├── httpkit.lua
├── pathkit.lua
├── log.lua
├── argparse.lua
├── levenshtein.lua
├── ui.lua
├── scout.lua
├── allay.lua
└── alicorn.lua
```

The actual library source code lives in
[lualibs](https://github.com/allaycc/lualibs); allay's CLI lives in
[allay](https://github.com/allaycc/allay); the unicornpkg translator
lives in [alicorn](https://github.com/allaycc/alicorn). This repo only
contains the package definitions that point at those sources.

## License

MIT.
