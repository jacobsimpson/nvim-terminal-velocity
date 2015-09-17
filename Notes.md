Example of editing a file in the surrounding Neovim editor:

https://www.snip2code.com/Snippet/432675/Edit-file-in-host-Neovim-instance-from-a
- handles multiple files, but not the GIT commit message editor situation.



- suggestions, first not considered helpful.
:help set_env 
:help :let-environment 

To test the env variable situation...
:let $myvar = "hello" 
:echo system('cat $myvar') 
cat: cannot open hello 


let before = winnr()
" navigate up
wincmd k
let after = winnr()

if before == after then
" There is no window above, so make one
" https://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
leftabove split
endif

e file
