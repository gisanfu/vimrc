colorscheme torte
set columns=120
set lines=40
set guifont=Monospace\ 12

" 讓畫面更簡單，更乾靜
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

" 讓你打開的gvim視窗，能夠變成最大化
" http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif
