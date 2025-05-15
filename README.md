# Notes

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

# Dependencies
Install all dependencies at once with `xargs -a packages.txt sudo apt install -y`

Description of the dependencies
- `ripgrep` : To use live grep with the telescope plugin

# Notable Keybindings
<leader> is remapped to <space>
Ctrl + P = Fuzzy file search
<leader>fg = Search inside files.
