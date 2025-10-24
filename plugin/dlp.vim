if exists('g:loaded_dlp')
  finish
endif
let g:loaded_dlp = 1

lua require('dlp').setup()
