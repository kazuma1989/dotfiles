" 次のサイトを参考にした。
" https://www.pc-gear.com/post/vscode-vim-vimrc/
" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally

" Shift キーを押さずに済むように ; と : を入れ替え。
nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :

" j, k は表示上の行（折り返し）を考慮した移動にする。よく使うので。
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" j, k 同様に、表示上の行を考慮した行頭・行末移動にする。直感的なので。
nnoremap ^ g^
nnoremap 0 g0
nnoremap $ g$
nnoremap g^ ^
nnoremap g0 0
nnoremap g$ $

" 行連結は間にスペースのないほうがよく使う。日本語を使うし。
nnoremap J gJ
nnoremap gJ J
vnoremap J gJ
vnoremap gJ J

" スプリットしたウィンドウ間のカーソル移動を簡単にする。
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 大雑把に移動したいときに便利。
noremap ] 10gj
noremap [ 10gk
noremap <C-E> 10<C-E>
noremap <C-Y> 10<C-Y>
