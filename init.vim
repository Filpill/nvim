lua require("config.lazy")

" Compile and View LaTeX PDF
augroup latex_keymaps
  autocmd!
  autocmd FileType tex nnoremap <buffer> <leader><F11> :!pdflatex %:p<CR>
  autocmd FileType tex nnoremap <buffer> <leader><F12> :!zathura --fork %:r.pdf<CR>
augroup END
