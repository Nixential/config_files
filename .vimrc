set relativenumber
set number
" Specify the plugin directory (optional)
call plug#begin('~/.vim/plugged')

" Add the OCaml language server plugin
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'


" Initialize plugin system
call plug#end()

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
endfunction

" Enable vim-devicons in NERDTree
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

" Enable vim-devicons in NERDTree for specific filetypes
let g:webdevicons_filetypes = {
      \ 'html': 'html',
      \ 'css': 'css',
      \ 'js': 'javascript',
      \ 'json': 'json',
      \ 'md': 'markdown',
      \ 'php': 'php',
      \ 'py': 'python',
      \ 'rb': 'ruby',
      \ 'xml': 'xml',
      \ 'go': 'go',
      \ 'ml': 'ocaml'
      \ }
let g:webdevicons_enable_NERDTree = 1
