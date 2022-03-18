autocmd!
set clipboard=unnamed
set mouse=ar
set vb
set tabstop=4 shiftwidth=4
set t_Co=256
set nocompatible              " be iMproved
set hidden
filetype off                  " required!
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Themes
Plugin 'vim-scripts/greenvision'
Plugin 'camgunz/amber'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'bruth/vim-newsprint-theme'
Plugin 'croaker/mustang-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'roosta/srcery'
Plugin 'cohlin/vim-colorschemes'
Plugin 'euclio/vim-nocturne'
Plugin 'artumi-richard/vim-colors-japanesque'
Plugin 'clinstid/eink.vim'
Plugin 'saalaa/ancient-colors.vim'
Plugin 'wolverian/minimal'
Plugin 'artumi-richard/vim-colors-off'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'epii1/phpcd.vim'
" Takes you to the same place in a file you last were
Plugin 'zhimsel/vim-stay'
" Recommended vim-stay line
set viewoptions=cursor,folds,slash,unix

" Stops folding being so slow it's shit
Plugin 'Konfekt/FastFold'
" Shows some better fold text
Plugin 'Konfekt/FoldText'
" Git toosl
Plugin 'tpope/vim-fugitive'
" cursor over a date and Ctrl-A increases and Ctrl-X decreases the bit
" its over
Plugin 'tpope/vim-speeddating.git'
" Makes tables work in text nicely
Plugin 'godlygeek/tabular'
" Syntax for markdown
Plugin 'plasticboy/vim-markdown'

" Vim's javascript indenting seems rubbish - hopefully this is the fix
Plugin 'pangloss/vim-javascript'

" Asyncrhonous syntax highlighting
Plugin 'w0rp/ale'

let g:ale_sign_column_always = 1
let g:ale_echo_cursor = 1
let g:ale_open_list = 'onsave'
let g:ale_php_phpmd_ruleset = 'codesize,unusedcode,design'
let g:ale_lint_delay = 800
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='sol'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_highlighting_cache = 1
let g:airline#extensions#tabline#ignore_bufadd_pat = '!'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline_extensions = ['branch','tabline','fugitiveline','ale']

" Autoclose - provides the closing character for these characters - [{(, '" etc
" 14/06/2017 removed the following plugin as it caused a bug when you pressed the cursor
" up or down. I think it's probably worth trying again in the future 
" Plugin 'Townk/vim-autoclose'
" autocmd FileType vimwiki let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "[")

" Awesome syntax checker.
" REQUIREMENTS: See :h Syntastic
" Plugin 'scrooloose/syntastic'
"
" Edit files using sudo/su when writing without perm do :SudoWrite
Plugin 'chrisbra/SudoEdit.vim'
" Fonts for the powerline
Plugin 'Lokaltog/powerline-fonts'
" Shows git changes ina  gutter
Plugin 'airblade/vim-gitgutter'
" Candidate for deletion? Used by something else?
Plugin 'mileszs/ack.vim'
" Candidate for deletion? Used by something else?
Plugin 'MarcWeber/vim-addon-mw-utils'
" Almost certainly used by something else.
Plugin 'tomtom/tlib_vim'
" snippet implementation
Plugin 'garbas/vim-snipmate'
let g:snipMate = { 'snippet_version' : 1 }
" snippets used by the implementation
Plugin 'artumi-richard/vim-snippets'
"Vim understands go 
Plugin 'fatih/vim-go'
"Nice for writing stories and the like
Plugin 'mikewest/vimroom'
" Speaks for itself!
Plugin 'vimwiki/vimwiki'
Plugin 'kien/ctrlp.vim'
" a grey colour scheme
Plugin 'phucngodev/mono'

call vundle#end()
filetype plugin indent on
nnoremap <silent> <Leader>mz <Plug>VimroomToggle
nnoremap <silent> <Leader>n  :cn
nnoremap <silent> <Leader>p  :cp



nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']


let g:markdown_folding = 0
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1


filetype plugin indent on     " required!

set winminheight=0
"set winheight=999

set spell spelllang=en_gb
set hlsearch
set smartcase
set ic
set number
"set relativenumber

 "let g:Powerline_theme="skwp"

" let g:Powerline_colorscheme="alight"
" let g:Powerline_symbols = 'fancy'
set laststatus=2
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap <leader>a :Ack
"nnoremap <leader>e :NERDTree
set path=.,,
syntax enable
au BufRead,BufNewFile *.txt set tw=80 ai spell
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.vim set expandtab
au BufRead,BufNewFile *.tpl set ft=html tw=0
au BufRead,BufNewFile *.js set ft=javascript tw=0
au BufRead,BufNewFile *.class set ft=php tw=0
au BufRead,BufNewFile *.module set ft=php tw=0
au BufRead,BufNewFile *.inc set ft=php tw=0
au BufRead,BufNewFile *.wiki set tw=70
au BufRead,BufNewFile *.md set tw=70
au BufRead,BufNewFile *.blade.php set ft=html tw=0
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &


" Removed these because they hid the cursor for some reason. It worked for
" years. So it's probably a bug that's worth checking for again.
"imap <silent> <Down> <C-o>gj
"imap <silent> <Up> <C-o>gk
"nmap <silent> <Down> gj
"nmap <silent> <Up> gk

			

nmap <F2> <leader>ww

"Go dark - use a darker colour scheme
nmap <leader>gd  :set background=dark:colorscheme Atelier_HeathDark:AirlineTheme Atelier_CaveDark:highlight Search guifg=black guibg=yellow
nmap <leader>ge  :set background=light:colorscheme Atelier_EstuaryLight:highlight Search guifg=black guibg=yellow
nmap <leader>gb  :set background=light:colorscheme Atelier_LakesideLight:highlight Search guifg=black guibg=yellow
nmap <leader>gv  :set background=light:colorscheme Atelier_DuneLight:AirlineTheme Atelier_DuneLight::highlight Search guifg=black guibg=yellow
"Go light - use a light colour scheme
"nmap <leader>gl  :set background=light:colorscheme solarized:AirlineTheme Atelier_DuneLight:highlight Search guibg=black guifg=yellow
nmap <leader>gl  :set background=light:colorscheme off:AirlineTheme Atelier_CaveLight:set guifont=Roboto\ Mono\ for\ Powerline\ 11

nmap <leader>gh  :highlight Search guifg=black guibg=yellow

" ensures that at least 5 lines are displayed below cursor
set scrolloff=5

filetype indent on
set autowrite
set is
"set cursorline

function! MyModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! MyFilename()
    return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
		\ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
		\  &ft == 'unite' ? unite#get_status_string() :
		\  &ft == 'vimshell' ? vimshell#get_status_string() :
		\ '' != expand('%:f') ? expand('%:f') : '[No Name]') .
		\ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction


function! MyFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
	let _ = fugitive#head()
	return strlen(_) ? '⭠ '._ : ''
    endif
    return ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

"let g:syntastic_auto_jump = 0
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_always_populate_loc_list = 1


"let g:netrw_browse_split=4
let g:netrw_liststyle=3
let g:netrw_winsize=25
" hide swap files
let g:netrw_list_hide= '.*\.sw[pownm],.*\.git/$'
"let g:syntastic_mode_map = { 'mode': 'active',
"			\ 'active_filetypes': [],
"			\ 'passive_filetypes': ['html'] }

let &colorcolumn=join(range(121,999),",")
"highlight ColorColumn ctermbg=233 guibg=#3d3d3d
"highlight Folded ctermbg=232 guibg=#3d3d3d
"highlight CursorLine guibg=#0B0B0B ctermbg=0
highlight clear SpellBad
highlight SpellBad cterm=underline ctermfg=red
highlight Search guifg=black guibg=yellow


nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l


au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
"let g:go_jump_to_error = 0
"let g:go_fmt_fail_silently = 1
"let g:go_fmt_autosave = 0
" Use CTRL-S for saving, also in Insert mode

function! VimwikiLinkHandler(link)
	let link = a:link
    if link =~# '^thunderlink:'
   	 try
   	   exec "silent !setsid xdg-open \'" . a:link ."\'"
	   exec 'silent !setsid wmctrl -a Thunderbird'
   	   return 1
   	 catch
   	   echo "Thunder link failure!"
   	 endtry
   	 return 0
	endif
	if link =~# '^vfile:'
	  let link = link[1:]
	else
	  return 0
	endif

	let link_infos = vimwiki#base#resolve_link(link)
	if link_infos.filename == ''
	  echomsg 'Vimwiki Error: Unable to resolve link!'
	  return 0
	else
	  exe 'tabnew ' . fnameescape(link_infos.filename)
	  return 1
	endif
endfunction


nnoremap <Leader>wc ^i- [ ] <ESC>j^
nnoremap <c-l> i- [ ] 
nnoremap <Leader>wC :VimwikiTOC

noremap <c-s> :update<CR>
vnoremap <c-s> <c-c>:update<CR>
inoremap <c-s> <c-o>:update<CR>

map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
" for gitlab wiki style
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_folding_level = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext= 1

let g:vimwiki_folding=''

let g:vimwiki_table_auto_fmt = 0
 let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md' },
			 \	{'path': '~/Documents/Work/Operations-Docs/',
            \ 'syntax': 'markdown', 'ext': '.md'},
 			\ {'path': '~/Documents/Work/NewArtumiWiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]
let g:netrw_banner = 0
let g:netrw_liststyle = 3

iab <expr> curt strftime("%H:%M");

set printfont=Source\ Code\ Pro\ for\ Powerline\ :h8
set printoptions=left:3pc,right:3pc,top:2pc,bottom:2pc

set background=light
colors PaperColor

set foldlevel=1
hi Terminal ctermbg=black ctermfg=lightgrey guibg=#333333 guifg=#eeeeee     


" Emoji shortcuts
iab :tick: ✅
iab :warning: ⚠
iab :bulb: 💡
iab :pushpin: 📌
iab :bomb: 💣
iab :pill: 💊
iab :construction: 🚧
iab :pencil: 📝
iab :point_right: 👉
iab :book: 📖
iab :link: 🔗
iab :wrench: 🔧
iab :tel: 📞
iab :email: 📧
iab :computer: 💻
iab :cal: 🗓️
iab :ok: 👌
iab :house: 🏠
iab :beach: 🏖️

" Dates
iab  <expr> :date: strftime("%d %b %Y")

" Script start
iab <expr> :artumi-start: "<?php\ninclude('local/o4bcrm.conf.php');\nini_set('include_path','.:'.PATH_SYSTEM);\nglobal $goManager;\n$goManager=new Manager();\n"

" Vim wiki today
iab  <expr> :today: "# 🗓️ " . strftime("%d/%m/%Y %A")
