# Instructions
1. Ensure you have the latest neovim from [here](https://github.com/neovim/neovim/blob/master/INSTALL.md).
2. Clone the repo to `~/.config`.
```bash
git clone git@github.com:CJans121/nvim.git ~/.config/nvim 
```
3. Install the plugin dependencies:
```bash
xargs -a ~/.config/nvim/requirements.txt sudo apt install -y
```
4. Open neovim.
```bash
nvim
```
That's it. The plugin manager `Lazy` will take care of installing all the plugins.

# Plugin Dependencies
The above instructions already handle the installation of all plugin dependencies. Below is a list of these dependencies along with their descriptions.
- `ripgrep` : To use live grep with the telescope plugin
  
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
<leader> is remapped to <space>
Ctrl + P = Fuzzy file search
<leader>fg = Search inside files.
