# Noir

A dark Neovim colorscheme. Warm grey text, muted sage accents. Ships with
two background variants.

## Installation

Requires `nvim 0.9+`.

```lua
{
  "tahadx/noir.nvim",
  priority = 1000,
  config = true,
  opts = { variant = "dawn" },
}
```

Then set the colorscheme:

```lua
vim.cmd.colorscheme("noir")
```

For LazyVim, add both the plugin and colorscheme:

```lua
{
  "tahadx/noir.nvim",
  priority = 1000,
  opts = { variant = "dawn" },
},
{
  "LazyVim/LazyVim",
  opts = { colorscheme = "noir" },
},
```

## Variants

Noir ships with two background variants:

| Variant      | `bg`       | Description          |
| ------------ | ---------- | -------------------- |
| `dawn`       | `#0c0b0c`  | Default. Soft black. |
| `pure_black` | `#000000`  | Pure black.          |

### LazyVim

```lua
-- Dawn (default)
return {
  {
    "tahadx/noir.nvim",
    priority = 1000,
    opts = { variant = "dawn" },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noir",
    },
  },
}

-- Pure black
return {
  {
    "tahadx/noir.nvim",
    priority = 1000,
    opts = { variant = "pure_black" },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noir",
    },
  },
}
```

Both `opts` and `colorscheme` are required.

### vim.g

Set before plugins load:

```lua
vim.g.noir_variant = "dawn"     -- or "pure_black"
```

### Command

Switch at runtime:

```vim
:NoirVariant dawn
:NoirVariant pure_black
```

Tab completion is supported.

## Customization

All colors live in `lua/noir/palette.lua`. Tweak any value there and reload
with `:colorscheme noir`.

## Palette

| Role       | Hex     | Used for                       |
| ---------- | ------- | ------------------------------ |
| `bg`       | `#000000` | Background                    |
| `alt_bg`   | `#1c1c1c` | Float, cursorline, statusline |
| `fg`       | `#c1c1c1` | Foreground / property         |
| `comment`  | `#505050` | Comments, line numbers        |
| `constant` | `#aaaaaa` | Constants, numbers            |
| `func`     | `#888888` | Functions                     |
| `keyword`  | `#999999` | Keywords, statements          |
| `operator` | `#9b99a3` | Operators, delimiters         |
| `string`   | `#aa9988` | Strings                       |
| `type`     | `#777755` | Types                         |
| `visual`   | `#333333` | Visual selection, popup bg    |
| `accent`   | `#8a9a7b` | Accent, special, diagnostics  |

## License

MIT
