# Neovim Ayu

[ayu-vim](https://github.com/ayu-theme/ayu-vim), a theme for Vim, reimplemented in lua,
with inspirations from [material.nvim](https://github.com/marko-cerovac/material.nvim).

## Screenshots

![dark](https://raw.githubusercontent.com/CantoroMC/ayu-nvim/screenshots/screenshots/dark.png)

![mirage](https://raw.githubusercontent.com/CantoroMC/ayu-nvim/screenshots/screenshots/mirage.png)

![light](https://raw.githubusercontent.com/CantoroMC/ayu-nvim/screenshots/screenshots/light.png)

## Configuration

The theme contains three color variants: `light`, `mirage` and `dark`.

It will respect your `background` (see `:h background`) setting to choose between `dark` and `light` variants.

To use `mirage` variant instead of `dark` for dark background you should specify the following anywhere in your configuration:

```lua
vim.g.ayu_mirage = true
```

By default, many highlighting groups have the italic style, to avoid that add
```lua
vim.g.ayu_avoid_italics = true
```
to your init.lua
