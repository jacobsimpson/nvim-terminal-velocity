

if has('nvim')
    " Update the terminal mode so the Esc char changes to normal mode.
    tnoremap <Esc> <C-\><C-n>

    " Map the ALT keys to make navigation out of a terminal easier.
    tnoremap <A-h> <C-\><C-n>:wincmd h<CR>
    tnoremap <A-j> <C-\><C-n>:wincmd j<CR>
    tnoremap <A-k> <C-\><C-n>:wincmd k<CR>
    tnoremap <A-l> <C-\><C-n>:wincmd l<CR>

    " These are the characters sent by the equivalient Alt-? combinations on
    " the default keyboard mapping for a Mac.
    tnoremap è <C-\><C-n>:wincmd h<CR>
    tnoremap ê <C-\><C-n>:wincmd j<CR>
    tnoremap ë <C-\><C-n>:wincmd k<CR>
    tnoremap ì <C-\><C-n>:wincmd l<CR>

    " Some short cuts to make it easier to start a term, since I do it a lot.
    nnoremap ,tj :sp <BAR> term<CR>
    nnoremap ,tk :topleft sp <BAR> term<CR>
    nnoremap ,tl :vsp <BAR> term<CR>
    nnoremap ,th :leftabove vsp <BAR> term<CR>
    nnoremap ,t. :term<CR>

    " NOTE: This is the command I was using, but there were certain
    " circumstances when I would switch to a window that previously contained a
    " terminal buffer in it and it would drop me into insert mode.
    "autocmd BufWinEnter,WinEnter term://* startinsert
    " NOTE CONTINUED: This a new command that attempts to enter insert mode by
    " matching the buffer type.
    autocmd BufWinEnter,WinEnter term://* if &buftype == 'terminal' | startinsert | endif

    function DoItVimL()
        enew
        let $PATH = '/bar:' . $PATH
        "call termopen('zsh')
        call termopen(&sh)
        startinsert
    endfunction

else
    echo "Terminal Velocity only works in Neovim. Skipping..."
endif

