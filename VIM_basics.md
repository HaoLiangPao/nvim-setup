# Vim Basics Guide

This guide covers fundamental Vim concepts and commands that are essential for using Neovim effectively. It also includes information on how to access built-in learning resources and use the help system.

## Table of Contents

1. [Core Vim Concepts](#core-vim-concepts)
2. [Vim Modes](#vim-modes)
3. [Basic Movement](#basic-movement)
4. [Text Editing](#text-editing)
5. [Learning Resources](#learning-resources)
   - [Accessing Vim Tutorial](#accessing-vim-tutorial)
   - [Using the Help System](#using-the-help-system)
6. [Practice Exercises](#practice-exercises)
7. [Advanced Vim Concepts](#advanced-vim-concepts)

## Core Vim Concepts

Vim is built around several core concepts that make it powerful:

1. **Modal Editing**: Different modes for different tasks
2. **Composable Commands**: Commands that can be combined
3. **Text Objects**: Operating on structured pieces of text
4. **Dot Command**: Repeating the last change
5. **Macros**: Recording and playing back sequences of commands

Understanding these concepts will help you become proficient in Vim.

## Vim Modes

Vim has several modes, each with a specific purpose:

- **Normal Mode**: The default mode for navigation and manipulation
- **Insert Mode**: For typing text
- **Visual Mode**: For selecting text
- **Command Mode**: For executing commands
- **Replace Mode**: For replacing existing text
- **Terminal Mode**: For interacting with the built-in terminal

### Switching Between Modes

- From any mode to **Normal Mode**: Press `Esc` or `Ctrl-[`
- From Normal to **Insert Mode**: Press `i` (insert), `a` (append), `o` (new line below), etc.
- From Normal to **Visual Mode**: Press `v` (character-wise), `V` (line-wise), or `Ctrl-v` (block-wise)
- From Normal to **Command Mode**: Press `:` (colon)
- From Normal to **Replace Mode**: Press `R`
- From Normal to **Terminal Mode**: Use `:terminal` command

## Basic Movement

### Character Navigation

- `h`: Move left
- `j`: Move down
- `k`: Move up
- `l`: Move right

### Word Navigation

- `w`: Move to the beginning of the next word
- `e`: Move to the end of the current/next word
- `b`: Move to the beginning of the previous word
- `ge`: Move to the end of the previous word

### Line Navigation

- `0`: Move to the beginning of the line
- `^`: Move to the first non-blank character of the line
- `$`: Move to the end of the line
- `g_`: Move to the last non-blank character of the line

### Document Navigation

- `gg`: Move to the beginning of the file
- `G`: Move to the end of the file
- `{`: Move up one paragraph
- `}`: Move down one paragraph
- `Ctrl-u`: Move up half a screen
- `Ctrl-d`: Move down half a screen
- `Ctrl-b`: Move up one full screen
- `Ctrl-f`: Move down one full screen
- `zz`: Center the cursor on the screen
- `zt`: Put the cursor at the top of the screen
- `zb`: Put the cursor at the bottom of the screen

### Jumping

- `%`: Jump to matching bracket
- `#`: Jump to previous occurrence of the word under cursor
- `*`: Jump to next occurrence of the word under cursor
- `gd`: Jump to definition of the word under cursor
- `Ctrl-o`: Jump back to previous position
- `Ctrl-i`: Jump forward to next position

## Text Editing

### Inserting Text

- `i`: Insert before cursor
- `I`: Insert at the beginning of the line
- `a`: Append after cursor
- `A`: Append at the end of the line
- `o`: Open a new line below and insert
- `O`: Open a new line above and insert

### Deleting Text

- `x`: Delete character under cursor
- `X`: Delete character before cursor
- `dw`: Delete word
- `dd`: Delete line
- `D`: Delete from cursor to end of line
- `d$`: Delete from cursor to end of line
- `d0`: Delete from cursor to beginning of line
- `d^`: Delete from cursor to first non-blank character
- `dG`: Delete from cursor to end of file
- `dgg`: Delete from cursor to beginning of file

### Changing Text

- `r`: Replace single character
- `R`: Enter replace mode
- `cw`: Change word
- `cc` or `S`: Change entire line
- `C`: Change from cursor to end of line
- `~`: Toggle case of character under cursor
- `gu{motion}`: Make specified text lowercase
- `gU{motion}`: Make specified text uppercase

### Copy and Paste

- `y`: Yank (copy) selection
- `yy` or `Y`: Yank current line
- `p`: Paste after cursor
- `P`: Paste before cursor

### Undo and Redo

- `u`: Undo
- `Ctrl-r`: Redo
- `U`: Undo all changes on the current line

## Learning Resources

### Accessing Vim Tutorial

Neovim includes a built-in tutorial called Vimtutor. To access it:

1. Open a terminal
2. Run one of the following commands:
   ```
   vimtutor      # If you have Vim installed
   nvim +Tutor   # From within Neovim
   ```

Alternatively, from within Neovim, you can:
1. Enter command mode by pressing `:`
2. Type `Tutor` and press Enter

The tutorial takes about 30 minutes to complete and covers all the basic commands.

### Using the Help System

Neovim has an extensive help system that you can use to learn more about any command or feature.

#### Basic Help Commands

- `:help` or `:h`: Open the main help file
- `:help {topic}`: Get help on a specific topic
- `:helpgrep {pattern}`: Search the help files for a pattern

#### Navigating the Help System

- Use `Ctrl-]` to follow a link (jump to a tag)
- Use `Ctrl-t` or `Ctrl-o` to go back
- Use `:bnext` and `:bprev` to navigate between help buffers

#### Useful Help Topics

- `:help quickref`: Quick reference guide
- `:help index`: Index of all commands
- `:help tutor`: Information about the tutorial
- `:help user-manual`: The user manual
- `:help {command}`: Help for a specific command (e.g., `:help dd`)
- `:help 'option'`: Help for an option (e.g., `:help 'tabstop'`)

#### Using Telescope for Help

LazyVim includes Telescope, which makes searching the help system easier:

1. Press `<leader>fh` (usually `Space` followed by `fh`)
2. Type your search term
3. Navigate the results with `j` and `k`
4. Press `Enter` to open the selected help topic

## Practice Exercises

Here are some exercises to help you practice Vim commands:

### Exercise 1: Basic Movement

1. Open a file with some text
2. Practice moving around using `h`, `j`, `k`, `l`
3. Try word navigation with `w`, `e`, `b`
4. Navigate to specific lines using `gg` and `G`

### Exercise 2: Text Manipulation

1. Create a new file: `:e practice.txt`
2. Enter insert mode and type a few paragraphs
3. Practice deleting words with `dw`
4. Practice changing words with `cw`
5. Practice yanking and pasting with `yy` and `p`

### Exercise 3: Search and Replace

1. Search for a word using `/word`
2. Navigate between matches with `n` and `N`
3. Replace text using `:%s/old/new/g`
4. Replace with confirmation using `:%s/old/new/gc`

## Advanced Vim Concepts

Once you're comfortable with the basics, explore these advanced concepts:

### Text Objects

Vim allows you to operate on "text objects" like words, sentences, paragraphs, or text between brackets:

- `diw`: Delete inner word
- `ci"`: Change inside quotes
- `da(`: Delete around parentheses (including the parentheses)
- `yi]`: Yank inside square brackets

### Marks

You can set marks to quickly jump to specific positions:

- `m{a-z}`: Set a mark at the current position
- `'{a-z}`: Jump to the line of the mark
- `` `{a-z}`` : Jump to the exact position of the mark

### Macros

Record and play back sequences of commands:

- `q{a-z}`: Start recording a macro into register {a-z}
- `q`: Stop recording
- `@{a-z}`: Execute the macro stored in register {a-z}
- `@@`: Repeat the last executed macro

### Registers

Vim has multiple registers for storing text:

- `"{a-z}y`: Yank into register {a-z}
- `"{a-z}p`: Paste from register {a-z}
- `:reg`: View the contents of all registers

## Additional Resources

- [Vim Adventures](https://vim-adventures.com/): Learn Vim while playing a game
- [OpenVim](https://www.openvim.com/): Interactive Vim tutorial
- [Vim Cheat Sheet](https://vim.rtorr.com/): Quick reference for Vim commands
- [Practical Vim](https://pragprog.com/titles/dnvim2/practical-vim-second-edition/): Book by Drew Neil
- [Vimcasts](http://vimcasts.org/): Screencasts on Vim