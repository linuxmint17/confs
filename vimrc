"source $VIMRUNTIME/defaults.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set background=dark
"set background=light
set nu " show line num
set nocompatible  " not compatible with vi
set tabstop=4 
set shiftwidth=4
set ruler "Always display the current cursor position in the lower right corner of the Vim window.
set backspace=indent,eol,start
set softtabstop=4 "backsapce witdh in insert mode

set hlsearch " hight light serach result
set expandtab " set noexpandtab
set autoindent " automatic indent

" file backup start with ~filename
if has("vms")
  set nobackup
else
  set backup
endif

set backupdir=~/.vim/backupfiles
set backupext=.orig

"  use the following cmd to do the replace tab with 4 spaces, ! means proc all tabs
" replace tab to 4 space
" :set ts=4
" :set expandtab
" :%retab!
"
" :replace 4 sapce to tab
" :set ts=4
" :set no expandtab
" :%retab!
"

" Allow saving of files as sudo when I fogot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

"colorscheme blue
"this colorscheme should be optional
