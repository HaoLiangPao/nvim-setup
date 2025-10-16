# Neovim Setup with LazyVim

A self-contained Neovim configuration based on LazyVim that can be easily replicated across different machines. This setup provides a consistent coding experience on any server or workstation.

## Features

- Based on [LazyVim](https://github.com/LazyVim/LazyVim), a well-maintained Neovim configuration
- Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for efficient plugin management
- Includes custom configurations and additional plugins
- Easy installation with a single script
- Consistent experience across different machines

## Quick Start

### Prerequisites

- Git
- Neovim (v0.8.0 or later recommended, will be installed by the script if not present)

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/nvim-setup.git
   cd nvim-setup
   ```

2. Run the installation script:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. Start Neovim:
   ```bash
   nvim
   ```

   On first launch, LazyVim will automatically install all plugins.

## Directory Structure

```
nvim/
├── init.lua                 # Main entry point
├── lua/
│   ├── config/
│   │   ├── autocmds.lua     # Custom autocommands
│   │   ├── keymaps.lua      # Custom key mappings
│   │   ├── lazy.lua         # Plugin manager setup
│   │   └── options.lua      # Neovim options
│   └── plugins/
│       └── custom.lua       # Custom plugin configurations
```

## Customization

### Modifying Options

Edit `nvim/lua/config/options.lua` to change Neovim options. For example:

```lua
-- Change tab size
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Disable relative line numbers
vim.opt.relativenumber = false
```

### Adding Key Mappings

Edit `nvim/lua/config/keymaps.lua` to add or modify key mappings:

```lua
-- Add a new mapping
map("n", "<leader>x", "<cmd>YourCommand<CR>", { desc = "Your Command" })

-- Override an existing mapping
map("n", "<C-s>", "<cmd>write!<CR>", { desc = "Force save file" })
```

### Adding Autocommands

Edit `nvim/lua/config/autocmds.lua` to add custom autocommands:

```lua
-- Add a new autocommand
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})
```

### Adding Plugins

To add new plugins, create a new file in the `nvim/lua/plugins/` directory or edit the existing `custom.lua` file:

```lua
-- In nvim/lua/plugins/your-plugins.lua
return {
  {
    "plugin-author/plugin-name",
    config = function()
      require("plugin-name").setup({
        -- Your plugin configuration
      })
    end,
  },
  -- Add more plugins here
}
```

## LazyVim Extras

LazyVim provides many optional extras that you can enable by uncommenting the relevant lines in `nvim/lua/config/lazy.lua`:

```lua
-- Import any extras modules here
{ import = "lazyvim.plugins.extras.lang.typescript" },
{ import = "lazyvim.plugins.extras.lang.json" },
{ import = "lazyvim.plugins.extras.ui.mini-animate" },
```

See the [LazyVim documentation](https://www.lazyvim.org/extras) for a full list of available extras.

## Updating

### Updating Plugins

Inside Neovim, use the LazyVim plugin manager:

```
:Lazy update
```

### Updating LazyVim

LazyVim itself is just a plugin, so it will be updated when you update your plugins.

### Updating Your Configuration

To update your custom configuration:

1. Pull the latest changes from your repository:
   ```bash
   cd nvim-setup
   git pull
   ```

2. Run the installation script again:
   ```bash
   ./install.sh
   ```

## Troubleshooting

### Plugin Installation Issues

If you encounter issues with plugin installation:

1. Check the Lazy.nvim logs:
   ```
   :Lazy log
   ```

2. Try cleaning and reinstalling:
   ```
   :Lazy clean
   :Lazy restore
   ```

### Configuration Issues

If your configuration isn't working as expected:

1. Check for Lua errors:
   ```
   :messages
   ```

2. Try starting Neovim with minimal settings to isolate the issue:
   ```bash
   nvim --clean
   ```

## License

MIT

## Acknowledgements

- [LazyVim](https://github.com/LazyVim/LazyVim) for the base configuration
- [lazy.nvim](https://github.com/folke/lazy.nvim) for the plugin manager
- All plugin authors for their amazing work
