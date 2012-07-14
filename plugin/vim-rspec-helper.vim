" set g:rspec_helper_rspec_command if you don't use bundle exec,
" or if you're using the old 'spec' executable
if !exists('g:rspec_helper_rspec_command')
  let g:rspec_helper_rspec_command = "bundle exec rspec"
endif

" called with a truthy value will run the current line
function! CopyRSpecCommand(...)
  let line_or_blank = (a:0 > 0 && a:1) ? (' -l ' . line('.')) : ''
  let command = g:rspec_helper_rspec_command . " " . expand("%:p:.") . line_or_blank
  call CopyToClipboard(command)
endfunction

function! CopyToClipboard(string)
  let @* = a:string
  echo a:string
endfunction
