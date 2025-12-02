# Vim Guide

## Summary

A list of things to try and remember about vim.

## Functionality

### General
- Leader = <space>
- file viewer -> <leader>pv

### LSP
- Need to enable certain languages, read [docs](https://vonheikemen.github.io/learn-nvim/feature/lsp-setup.html).
- language server
- ctrl-]          -> go to definition
- gq              -> format
- K               -> display documentation of the symbol under the cursor
- ctrl-x + ctrl-o -> in insert mode, trigger code completion
- grn             -> renames all references of the symbol under the cursor
- gra             -> list code actions available in the line under the cursor
- grr             -> lists all the references of the symbol under the cursor
- gri             -> lists all the implementations for the symbol under the cursor
- grt             -> jump to the definition of the type symbol under the cursor
- gO              -> lists all symbols in the current buffer
- ctrl-s          -> in insert mode, display function signature under the cursor
- [d              -> jump to previous diagnostic in the current buffer
- ]d              -> jump to next diagnostic in the current buffer
- ctrl-w + d      -> show error/warning message in the line under the cursor

## Plugins

Plugins using the built in plugin manager [Pack](https://neovim.io/doc/user/pack.html).

### Fuzzy Finder
- <leader>pf -> find files
- <leader>pg -> grep or find in files
- <leader>pf -> buffer find/search open files

#### Installation

Install the following binaries to maximize features:
- apt install fzf
- apt install ripgrep
- apt install fd-find
- apt install bat # syntax highlighting in preview
- apt install git-delta
- apt install curl
- apt install xsel # or the wl-clipboard for wayland
- apt install tree-sitter-cli
- apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick # for [yazi](https://yazi-rs.github.io/docs/installation/)
- apt install rustup # to build yazi
- run bash-helpers/update_yazi.sh
- apt install wl-clipboard # wl-copy command
- apt install wireguard

### Yazi
- apt install rustup
- follow [manual build/installation instructions](https://yazi-rs.github.io/docs/installation#source) because there is not apt repo.

### DAP
- debugger adapter, allowing you to launch debugger in nvim
- set breakpoints? shortcuts, etc.
- [homepage](https://github.com/mfussenegger/nvim-dap)

### TreeSitter Context
- code parser, gives syntax highlighting
- context part gives context for cursor position such as function signature, class signature, etc.

### Render Markdown
- preview mode for markdown while in Normal mode
- will needs nerdfonts installed (below)

#### Fonts
- Install script for JetBrains nerd fonts
        ```bash
        # Ensure font config is installed
        sudo apt install unzip fontconfig

        # Create fonts directory and download
        ```bash
        mkdir -p ~/.local/share/fonts
        cd ~/.local/share/fonts
        curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
        unzip JetBrainsMono.zip -d JetBrainsMono
        rm JetBrainsMono.zip

        # Refresh font cache
        fc-cache -fv

        # Verify installation
        fc-list | grep -i "JetBrains"
        ```
- Restart X to pickup the new fonts.
- Setup console to use the new nerdfonts

### Undo Tree
- tree based undo
- launch -> <leader>u

## TODO
- mini.icons and render-markdown [issue](https://github.com/MeanderingProgrammer/render-markdown.nvim/issues/558).
- LSP config
- Finish primagen video
