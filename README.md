# Instructions
1. Ensure you have the latest neovim from [here](https://github.com/neovim/neovim/blob/master/INSTALL.md).
2. Clone the repo to `~/.config`.
```bash
git clone git@github.com:CJans121/nvim.git ~/.config/nvim 
```
3. Install the plugin dependencies:
```bash
xargs -a ~/.config/nvim/requirements_apt.txt sudo apt install -y
```
4. Open neovim.
```bash
nvim
```
That's it. The plugin manager `Lazy` will take care of installing all the plugins.

# Using Patched Fonts
Some plugins utilize patched fonts (i.e. fonts that have been modified (or "patched") to include additional glyphs and symbols) for enhanced look. We'll install JetBrainsMono Nerd Font below. If you prefer some other Nerd font, check them out [here](https://www.nerdfonts.com/font-downloads) and modify the font name in the following script to install them. 
```bash
~/.config/nvim/patched_font_installer.sh
```

# ROS2 C++ Notes
When building your ROS 2 workspace, include the CMake flag `-DCMAKE_EXPORT_COMPILE_COMMANDS=ON` so that a `compile_commands.json` file is generated:
```bash 
colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```
Then, create a symbolic link in the workspace root pointing to the generated file:
```bash
ln -s ~/<ws_ros2>/build/compile_commands.json ~/<ws_ros2>/compile_commands.json
```
This lets your C++ language server (e.g., clangd) locate ROS 2 headers and your package’s headers—enabling go-to-definition, auto-completion, and diagnostics in your editor.

# Plugin Dependencies
The above instructions already handle the installation of all plugin dependencies. Below is a list of these dependencies along with their descriptions.
`apt` packages:
- `ripgrep` : To use live grep with the telescope plugin
- `nodejs` : To run Node-based language servers like `pyright` (for Python) and `vim-language-server` (for Vimscript).
- `npm` : Node.js package manager, used by Mason to install and manage Node-based language servers.

# Linters and Formatters
The `none-ls` plugin enables the following linters and formatters as specified in `lua/plugins/none_ls.lua`. Install with Mason by opening nvim and typing `:Mason`. Then, navigate to the corresponding linters and formatters and install by pressing `i`.

- `clang-format` – Formatter for C and C++ code  
- `clang` – Linter and compiler for C and C++ code  
- `libxml2-utils` – Provides xmllint, used for formatting and linting XML  
- `black` – Code formatter for Python  
- `flake8` – Linter for Python source code
- `prettier` – Formatter for Markdown and various frontend/web file types  
- `markdownlint-cli` – Linter for Markdown files  
  
# Useful Notes

Package manager: Lazy

If you have trouble using Git over HTTPS (which is what Lazy.nvim uses by default to clone itself and plugins), you can configure Git to use SSH instead by applying the following setting:

```bash
git config --global url."git@github.com:".insteadOf "https://github.com/"
```
This tells Git to rewrite all GitHub HTTPS URLs to SSH format automatically.

To revert this setting, run:
```bash
git config --global --unset url."git@github.com:".insteadOf
```

# Notable Keybindings
- `<leader>` is remapped to `<space>`
- `Ctrl + P` = Fuzzy file search
- `<leader>fg` = Search inside files.
- The tmux leader key is remapped from the default `Ctrl-B` to `Ctrl-S`.
- `Ctrl + n` = Open directory navigation pane. Then `S` to open with horizontal split and `s` for vertical.
- Pane navigation is remapped using the `vim-tmux-navigator` plugin (which integrates tmux and Neovim navigation) with the following keybindings:

  - `Ctrl-h` — Navigate to the **left** pane  
  - `Ctrl-j` — Navigate to the **bottom** pane  
  - `Ctrl-k` — Navigate to the **top** pane  
  - `Ctrl-l` — Navigate to the **right** pane

# Author
Crasun Jans. Thanks to YT channel typecraft for wonderful tutorials.
