nnoremap <space> <nop>
let mapleader = "\<space>"
let maplocalleader = ","

inoremap jk <Esc>
cnoremap jk <C-c>

nnoremap <leader>q :NERDTreeToggle<CR>
nnoremap \ <leader>q
nnoremap <leader>w :TagbarToggle<CR>
nnoremap <leader>ee :Colors<CR>
nnoremap <leader>ea :AirlineTheme 
nnoremap <leader>e1 :call SpaceDark()<CR>
nnoremap <leader>e2 :call ColorSeoul256()<CR>
nnoremap <leader>e3 :call ColorForgotten()<CR>
nnoremap <leader>e4 :call ColorZazen()<CR>
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>t :call TrimWhitespace()<CR>
xnoremap <leader>a gaip*
nnoremap <leader>a gaip*
nnoremap <leader>s <C-w>s<C-w>j:terminal<CR>
nnoremap <leader>vs <C-w>v<C-w>l:terminal<CR>
nnoremap <leader>d <Plug>(pydocstring)
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>h :RainbowParentheses!!<CR>
nnoremap <leader>j :set filetype=journal<CR>
nnoremap <leader>k :ColorToggle<CR>
nnoremap <leader>l :Limelight!!<CR>
xnoremap <leader>l :Limelight!!<CR>
nnoremap <silent> <leader><leader> :noh<CR>


""" Variables
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16

""" Functions
function! AdjustFontSize(amount)
  if has("guifont") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to install guifont to use this function."
  endif
endfunction

" Mouse scroll zoom
function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

""" Mappings
map <C-ScrollWheelUp> :LargerFont
map <C-ScrollWheelDown> :SmallerFont


" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>

" terminal
tnoremap <F12> <C-\><C-n> 
set switchbuf+=useopen
function! TermEnter()
  let bufcount = bufnr("$")
  let currbufnr = 1
  let nummatches = 0
  let firstmatchingbufnr = 0
  while currbufnr <= bufcount
    if(bufexists(currbufnr))
      let currbufname = bufname(currbufnr)
      if(match(currbufname, "term://") > -1)
        echo currbufnr . ": ". bufname(currbufnr)
        let nummatches += 1
        let firstmatchingbufnr = currbufnr
        break
      endif
    endif
    let currbufnr = currbufnr + 1
  endwhile
  if(nummatches >= 1)
    execute ":sbuffer ". firstmatchingbufnr
    startinsert
  else
    execute ":terminal"
  endif
endfunction
map <F12> :call TermEnter()<CR>