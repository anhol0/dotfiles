" Enable Mouse
set mouse=a

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    GuiFont DepartureMono Nerd Font Mono:h12
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
"" Copy/paste from system clipboard
nnoremap <C-S-v> "+p
nnoremap <C-S-c> "+y
nnoremap <C-S-c> "+yy
inoremap <C-S-v> <Esc>"+p
inoremap <C-S-c> <Esc>"+y
vnoremap <C-S-v> "+p
vnoremap <C-S-c> "+y
tnoremap <Esc> <C-\><C-n>
tnoremap <C-S-v> "+p
tnoremap <C-S-c> "+y
tnoremap <C-PageDown> <C-\><C-n>:tabnext<CR>
tnoremap <C-PageUp> <C-\><C-n>:tabprevious<CR>
