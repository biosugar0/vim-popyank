# vim-popyank

Vim plugin for yank popup window text.

## Usage

### :PopYank

This command yank popup window text.

### Mapping example

```
nmap <leader>y <Plug>(PopYank)
```

### functions

* `popyank#pop()` : get popup window text and close popup window.
* `popyank#exec()`: yank popup window text
