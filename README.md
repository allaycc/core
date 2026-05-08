# allay-core

The default source for [allay](https://github.com/alfaoz/allay). Ships allay's
own runtime libraries (hash, httpkit, pathkit, log, argparse) and allay
itself, all installable as packages.

After `wget run`-ing allay's bootstrap, this source is added by default.
You don't need to install anything from here manually unless you want to
update allay's core.

## Adding allay-core to a fresh allay install

It's already there. Run `allay source list` to confirm.

## Available packages

| Package    | What it is                              |
|------------|-----------------------------------------|
| `hash`     | SHA-256 and HMAC-SHA256                 |
| `httpkit`  | http with retries and timeout           |
| `pathkit`  | atomic file writes, path helpers        |
| `log`      | leveled logger                          |
| `argparse` | command-line argument parser            |
| `allay`    | allay itself (so `allay update` works)  |

## Layout

```
.
├── index.lua              ← source manifest
├── hash.lua               ← package definitions
├── httpkit.lua
├── pathkit.lua
├── log.lua
├── argparse.lua
└── allay.lua
```

The actual library source code lives in
[lualibs](https://github.com/alfaoz/lualibs); allay's own source lives in
[allay](https://github.com/alfaoz/allay). This repo only contains the
allay package definitions that point at those sources.

## License

MIT.
