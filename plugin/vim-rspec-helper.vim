if !exists('g:rspec_helper_rspec_command')
  let g:rspec_helper_rspec_command = "bundle exec rspec"
endif

function! CopyRSpecFileCommand()
  let command = g:rspec_helper_rspec_command . " " . fnamemodify(bufname('%'), ':p:.')
  call CopyToClipboard(command)
endfunction

function! CopyRSpecSingleExampleCommand()
  let command = g:rspec_helper_rspec_command . " " . fnamemodify(bufname('%'), ':p:.') . " -l " . line('.')
  call CopyToClipboard(command)
endfunction

function! CopyToClipboard(string)
  let @* = a:string
  echo a:string
endfunction
