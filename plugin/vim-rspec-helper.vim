if !exists('g:rspec_helper_rspec_command')
  let g:rspec_helper_rspec_command = "bundle exec rspec"
endif

function! CopyRSpecFileCommand()
  let command = g:rspec_helper_rspec_command . " " . bufname('%')
  let @* = command
endfunction

function! CopyRSpecSingleExampleCommand()
  let command = g:rspec_helper_rspec_command . " " . bufname('%') . " -l " . line('.')
  let @* = command
endfunction
