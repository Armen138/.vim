Armen's VIM Config
==================

# Install

Clone this repository, then install the submodules:

```
bash init.sh
```

You can either check out into .vim or create a symlink.

# Plugins

* vim-airline
* vim-gitgutter
* rust.vim
* vim-json
* syntastic
* ctrlp.vim
* tabular
* tagbar
* vim-commentary
* vim-vinegar

# Handy keybindings

## Editing
* Ctrl-/  : comment current line/selection
* Tab-Tab : align currentline/selection by separators =*
* Tab-*   : align current line/selection by *
* Tab-=   : align current line/selection by =
* Tab-;   : align current line/selection by :

## Navigating
* Dash       : browse files
* Tab-`      : toggle Tag Bar
* Ctrl-Down  : move to split below
* Ctrl-Up    : move to split above
* Ctrl-Left  : move to split on the left
* Ctrl-Right : move to split on the right
* Alt-Left   : grow split
* Alt-Right  : shrink split
* Alt-Up     : shrink split
* Alt-Down   : grow split

# Notes

* The vim-airline configuration is adjusted so it looks good without a patched font
* I've tried to keep this as self-contained as possible, but some syntax highlighting functions may require installing external linters (eslint, pylint, etc).
* I didn't add any keybindings to create splits. Use :split and :vsplit 
* vim-json may have been a mistake. 
