# Neovim Beginner's Guide

This guide provides basic instructions for navigating and using Neovim with our LazyVim setup. It's designed for users who are new to Neovim or those who need a quick reference.

## Table of Contents

1. [Basic Concepts](#basic-concepts)
2. [Navigation](#navigation)
3. [File Management](#file-management)
4. [Window Management](#window-management)
5. [File Explorer](#file-explorer)
6. [Search and Replace](#search-and-replace)
7. [Common Operations](#common-operations)
8. [Troubleshooting](#troubleshooting)
9. [Cheat Sheet](#cheat-sheet)

## Basic Concepts

Neovim operates in different modes:

- **Normal mode**: For navigation and manipulation (default mode)
- **Insert mode**: For typing text
- **Visual mode**: For selecting text
- **Command mode**: For executing commands

The `<leader>` key is a special key used for custom commands. In our setup, the leader key is set to `Space`.

## Navigation

### Basic Movement

- `h`, `j`, `k`, `l`: Move left, down, up, right
- `w`: Move forward one word
- `b`: Move backward one word
- `0`: Move to the beginning of the line
- `$`: Move to the end of the line
- `gg`: Move to the beginning of the file
- `G`: Move to the end of the file
- `{`: Move up one paragraph
- `}`: Move down one paragraph
- `Ctrl-u`: Move up half a screen
- `Ctrl-d`: Move down half a screen
- `Ctrl-b`: Move up one full screen
- `Ctrl-f`: Move down one full screen

### Jump to Definition

- `gd`: Go to definition
- `gr`: Go to references
- `K`: Show documentation

## File Management

### Opening and Saving Files

- `:e filename`: Open a file
- `:w`: Save the current file
- `:w filename`: Save as
- `:wq` or `:x`: Save and quit
- `:q`: Quit
- `:q!`: Quit without saving
- `Ctrl-s`: Save file (custom mapping)

### Buffer Management

- `:ls`: List all buffers
- `:b number`: Switch to buffer by number
- `:bn`: Next buffer
- `:bp`: Previous buffer
- `<S-h>`: Previous buffer (custom mapping)
- `<S-l>`: Next buffer (custom mapping)
- `<leader>c`: Close buffer (custom mapping)

## Window Management

### Splitting Windows

- `:split` or `:sp`: Split horizontally
- `:vsplit` or `:vs`: Split vertically
- `<leader>-`: Split horizontally (LazyVim)
- `<leader>|`: Split vertically (LazyVim)

### Navigating Between Windows

- `Ctrl-h`: Move to the window on the left
- `Ctrl-j`: Move to the window below
- `Ctrl-k`: Move to the window above
- `Ctrl-l`: Move to the window on the right

### Resizing Windows

- `Ctrl-Up`: Increase window height
- `Ctrl-Down`: Decrease window height
- `Ctrl-Left`: Decrease window width
- `Ctrl-Right`: Increase window width

### Closing Windows

- `:q`: Close the current window
- `:only` or `:on`: Close all windows except the current one

## File Explorer

LazyVim uses Neo-tree as the file explorer.

### Opening and Closing the File Explorer

- `<leader>e`: Toggle file explorer
- `<leader>E`: Focus file explorer

### Navigating the File Explorer

- `j`/`k`: Move up/down
- `h`/`l`: Collapse/expand directories
- `Enter`: Open file or directory
- `r`: Rename file
- `a`: Create new file
- `d`: Delete file
- `y`: Copy file
- `x`: Cut file
- `p`: Paste file
- `c`: Copy file name
- `q`: Close file explorer

## Search and Replace

### Searching

- `/pattern`: Search forward for pattern
- `?pattern`: Search backward for pattern
- `n`: Go to the next match
- `N`: Go to the previous match
- `*`: Search for the word under cursor
- `<leader>/`: Clear search highlights

### Telescope Fuzzy Finder

LazyVim includes Telescope for powerful fuzzy finding:

- `<leader>ff`: Find files
- `<leader>fg`: Live grep (search in files)
- `<leader>fb`: Browse buffers
- `<leader>fh`: Search help tags
- `<leader>fr`: Recent files
- `<leader>fc`: Execute command

### Replacing

- `:%s/old/new/g`: Replace all occurrences of 'old' with 'new'
- `:%s/old/new/gc`: Replace all occurrences with confirmation
- `:s/old/new/g`: Replace in current line only

## Common Operations

### Text Editing

- `i`: Enter insert mode before cursor
- `a`: Enter insert mode after cursor
- `I`: Enter insert mode at beginning of line
- `A`: Enter insert mode at end of line
- `o`: Open new line below and enter insert mode
- `O`: Open new line above and enter insert mode
- `Esc` or `Ctrl-[`: Exit insert mode

### Copy, Cut, and Paste

- `y`: Yank (copy) selection
- `yy`: Yank current line
- `d`: Delete (cut) selection
- `dd`: Delete current line
- `p`: Paste after cursor
- `P`: Paste before cursor

### Undo and Redo

- `u`: Undo
- `Ctrl-r`: Redo

### Indentation

- `>>`: Indent line
- `<<`: Unindent line
- `=G`: Auto-indent from current position to end of file
- `gg=G`: Auto-indent entire file

### Code Actions

- `<leader>ca`: Code action
- `<leader>cf`: Format code
- `<leader>cr`: Rename symbol

## Troubleshooting

### Missing Icons

If you see question marks instead of proper icons:

1. Install a Nerd Font:
   ```bash
   # On macOS
   brew tap homebrew/cask-fonts
   brew install --cask font-hack-nerd-font
   
   # On Linux (example for Ubuntu)
   wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
   unzip Hack.zip -d ~/.fonts
   fc-cache -fv
   ```

2. Configure your terminal to use the Nerd Font

### Plugin Issues

If plugins aren't working correctly:

1. Update plugins: `:Lazy update`
2. Check health: `:checkhealth`
3. Sync plugins: `:Lazy sync`

## Cheat Sheet

### Essential Commands

| Mode | Key | Action |
|------|-----|--------|
| Normal | `i` | Enter insert mode |
| Normal | `Esc` | Return to normal mode |
| Normal | `:w` | Save file |
| Normal | `:q` | Quit |
| Normal | `<leader>e` | Toggle file explorer |
| Normal | `<leader>ff` | Find files |
| Normal | `<leader>fg` | Search in files |
| Normal | `Ctrl-h/j/k/l` | Navigate windows |
| Normal | `<S-h>/<S-l>` | Previous/next buffer |

### LazyVim Specific

| Key | Action |
|-----|--------|
| `<leader>` | Space key |
| `<leader>e` | Toggle file explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Browse buffers |
| `<leader>qq` | Quit Neovim |
| `<leader>w` | Save file |
| `<leader>c` | Close buffer |
| `<leader>bc` | Close all buffers except current |
| `<leader>gg` | Lazygit (if installed) |
| `<leader>/` | Clear search highlights |

## Additional Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [LazyVim Documentation](https://www.lazyvim.org/)
- Interactive tutorial: Run `:Tutor` inside Neovim
- [Vim Cheat Sheet](https://vim.rtorr.com/)