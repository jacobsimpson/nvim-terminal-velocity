# nvim-terminal-velocity

Some utilities and settings to improve the function of Neovim's terminal
capabilities.

- [Features](#features)
- [Installing](#installing)
- [Forthcoming](#forthcoming)

## <a id="features"></a>Features

1. Make Esc the key that exits insert mode in a terminal window.
1. Improved keys for navigating between windows.
    - Switching between terminals and editing is a fairly common experience.
      These keys should make it easy to navigate back and forth so you can copy
      and paste as required.
1. Make it easy to open new terminal windows:
    - ,tj - open a new terminal window below the current window.
    - ,tk - open a new terminal window above the current window.
    - ,th - open a new terminal window to the left of the current window.
    - ,tl - open a new terminal window to the right of the current window.
    - ,t. - open a new terminal window in the current window.
1. Make entering a terminal window automatically transition to insert mode when
   you enter it.

## <a id="installing"></a>Installing

I use NeoBundle so this is an example of how to load this plugin in NeoBundle.

```VimL
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

    " Let NeoBundle manage NeoBundle
    " Required:
    NeoBundleFetch 'Shougo/neobundle.vim'

    " You probably have a number of other plugins listed here.

    " Add this line to make your new plugin load, assuming you haven't renamed it.
    NeoBundle 'jacobsimpson/nvim-terminal-velocity'
call neobundle#end()
```

## <a id="forthcoming"></a>Forthcoming

1. Running nvim from inside a terminal window will open the file in a new
   window of the existing terminal, rather than creating a new instance of
   Neovim inside the current instance of Neovim.
1. Open new terminals in the current directory of the actively edited file.
1. An option to re-use the existing terminal if there is one with a matching
   path.

