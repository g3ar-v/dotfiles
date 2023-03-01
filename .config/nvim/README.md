<div align="center">
<p>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
      <img src="https://img.shields.io/badge/Neovim-0.8.1-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Neovim minimum version"/>
    </a>
</p>
</div>

# Shortcuts

Some of the shortcuts I use frequently are listed here. In the following shortcuts, `<leader>` represents ASCII character `,`.

| Shortcut      | Mode          | Description                                                      | plugin         | platform    |
| ------------- | ------------- | ---------------------------------------------------------------- | -------------- | ----------- |
| `sf`          | Normal        | Open file browser                                                | telescope.nvim | Linux/macOS |
| `<leader>f`   | Normal        | Fuzzy search file grepping in a floating window                  | telescope.nvim | Linux/macOS |
| `\\`          | Normal        | Fuzzy buffer search in a floating window                         | telescope.nvim | Linux/macOS |
| `<leader>t`   | Normal        | show help tags                                                   | telescope.nvim | Linux/macOS |
| `<leader>e`   | Normal        | show diagnostics telescope.nvim                                  | telescope.nvim | Linux/macOS |
| `<leader>v`   | Normal        | Reselect last pasted text                                        |                | Linux/macOS |
| `<leader>ev`  | Normal        | Edit Nvim config in a new tabpage                                |                | Linux/macOS |
| `<leader>sv`  | Normal        | Reload Nvim config                                               |                | Linux/macOS |
| `<leader>st`  | Normal        | Show highlight group for cursor text                             |                | Linux/macOS |
| `<leader>q`   | Normal        | Quit current window                                              |                | Linux/macOS |
| `<leader>Q`   | Normal        | Quit all window and close Nvim                                   |                | Linux/macOS |
| `<leader>w`   | Normal        | Save current buffer content                                      |                | Linux/macOS |
| `<leader>y`   | Normal        | Copy the content of entire buffer to default register            |                | Linux/macOS |
| `<leader>cl`  | Normal        | Toggle cursor column                                             |                | Linux/macOS |
| `<leader>cd`  | Normal        | Change current working directory to to the dir of current buffer |                | Linux/macOS |
| `<space>t`    | Normal        | Toggle tag window (show project tags in the right window)        |                | Linux/macOS |
| `<leader>gs`  | Normal        | Show Git status result                                           | vim-fugitive   | Linux/macOS |
| `<leader>gw`  | Normal        | Run Git add for current file                                     | vim-fugitive   | Linux/macOS |
| `<leader>gd`  | Normal        | Run git diff for current file                                    | vim-fugitive   | Linux/macOS |
| `<leader>gc`  | Normal        | Run git commit                                                   | vim-fugitive   | Linux/macOS |
| `<leader>gpl` | Normal        | Run git pull                                                     | vim-fugitive   | Linux/macOS |
| `<leader>gpu` | Normal        | Run git push                                                     | vim-fugitive   | Linux/macOS |
| `<leader>gl`  | Normal/Visual | Get perm link for current/visually-select lines                  | vim-fugitive   | Linux/macOS |
| `<leader>gb`  | Normal        | Browse current git repo in browser                               | vim-fugitive   | macOS       |
| `Alt-Shift-m` | Normal        | Stopping Markdown previewing in system browser                   |                | macOS       |
| `ob`          | Normal/Visual | Open link under cursor or search visual selection                |                | macOS       |
| `<Tab>`       | Normal        | Cycle to the next bufferline                                     | bufferline.lua | macOS/linux |
| `<S-Tab>`     | Normal        | Cycle to the previous bufferline                                 | bufferline.lua | macOS/linux |
| `ctrl-u`      | Insert        | Turn word under cursor to upper case                             |                | Linux/macOS |
| `ctrl-t`      | Insert        | Turn word under cursor to title case                             |                | Linux/macOS |
| `jk`          | Insert        | Return to Normal mode without lagging                            |                | Linux/macOS |
| `<C-j>`       | Normal        | Lspsaga diagnostic jump next                                     | lspsaga        | Linux/macOS |
| `<K>`         | Normal        | Lspsaga hover documentation                                      | lspsaga        | Linux/macOS |
| `<gd>`        | Normal        | Lspsaga lsp finder                                               | lspsaga        | Linux/macOS |
| `<C-k>`       | Insert        | Lspsaga signature help                                           | lspsaga        | Linux/macOS |
| `<gp>`        | Normal        | Lspsaga peek definition                                          | lspsaga        | Linux/macOS |
| `<gr>`        | Normal        | Lspsaga rename                                                   | lspsaga        | Linux/macOS |
| `<ga>`        | Normal        | Lspsaga code action                                              | lspsaga        | Linux/macOS |

# Custom commands

In addition to commands provided by various plugins, I have also created some custom commands for personal use.

| command    | description                                                             | example                        |
| ---------- | ----------------------------------------------------------------------- | ------------------------------ |
| `Redir`    | capture command output to a tabpage for easier inspection.              | `Redir hi`                     |
| `Edit`     | edit multiple files at the same time, supports globing                  | `Edit *.vim`                   |
| `Datetime` | print current date and time or convert Unix time stamp to date and time | `Datetime 12345` or `Datetime` |
