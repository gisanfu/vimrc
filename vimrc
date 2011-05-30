" author: gisanfu

" fast goback normal mode, and save file
:imap <f2> <Esc>:w<CR>
vnoremap <f2> <Esc>:w<CR>
nnoremap <f2> <Esc>:w<CR>

" search keyword, by this file
nm      <f3>    /<c-r>0<cr>
nm      <f4>    :wqa<cr>

" fast goback normal mode, and save all file, than close all file
:imap <f4> <Esc>:wqa<CR>
vnoremap <f4> <Esc>:wqa<CR>
nnoremap <f4> <Esc>:wqa<CR>

" CTRL-x is cut (in visual mode only)
vnoremap <C-x> "*d
" CTRL-c is copy (in visual mode only)
vnoremap <C-c> "+y

" 以下這兩個滑鼠的部份，是用在VM上面
" 應該是說，用在windows的putty上
" mouse enable
"nnoremap <f5> :set mouse=a<CR>

" mouse disable
" windows copy&paste enable
"nnoremap <f6> :set mouse=<CR>

" 方便貼上而以
nnoremap <f5> <Esc>:set paste<CR>"+p<Esc>:set nopaste<Esc>

" switch windows to firefox, and refresh it，這樣子左手就不用一直在按快速鍵
:imap <f6> <Esc>:w<CR>:call system('~/gisanfu/fast-change-dir/bin/cmd-refresh-firefox.sh refresh')<cr>
vnoremap <f6> <Esc>:w<CR>:call system('~/gisanfu/fast-change-dir/bin/cmd-refresh-firefox.sh refresh')<cr>
nnoremap <f6> <Esc>:w<CR>:call system('~/gisanfu/fast-change-dir/bin/cmd-refresh-firefox.sh refresh')<cr>

" 如果只是想在browser中查資料，而不需新refresh，那就按F7好了
:imap <f7> <Esc>:w<CR>:call system('~/gisanfu/fast-change-dir/bin/cmd-refresh-firefox.sh switchonly')<cr>
vnoremap <f7> <Esc>:w<CR>:call system('~/gisanfu/fast-change-dir/bin/cmd-refresh-firefox.sh switchonly')<cr>
nnoremap <f7> <Esc>:w<CR>:call system('~/gisanfu/fast-change-dir/bin/cmd-refresh-firefox.sh switchonly')<cr>

" 符號
" 1. Interrobang (無蝦米的國字一，也就是e) => ! 驚嘆號
" 2. Mouse (像英文的A) => @
" 3. number sign (無蝦米的J, 井字號) => #
" 4. Money (像英文的S) => $
" 5. Percent (像無蝦米的oeo) => %
" 6. Number Cubic (像英文字母的L) => ^ 也就是次方
" 7. And (像是數字8)=> &
" 8. asterisk(在零的旁邊,而零就是Zero,所以就是z`) => *
:imap ! !
:imap @ @
:imap # #
:imap $ $
:imap % %
:imap ^ ^
:imap & &
:imap * *
"
" 函式自動完成
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
