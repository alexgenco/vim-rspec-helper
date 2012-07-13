if !exists('g:rspec_helper_rspec_command')
  let g:rspec_helper_rspec_command = "bundle exec rspec"
endif

if !exists('g:rspec_helper_copy_command')
  let g:rspec_helper_copy_command = "pbcopy"
endif

function! CopyRSpecFileCommand()
  call CopyToClipboard(g:rspec_helper_rspec_command . " " . bufname('%') . " --color")
endfunction

function! CopyRSpecSingleExampleCommand()
  call CopyToClipboard(g:rspec_helper_rspec_command . " " . bufname('%') . " -l " . line('.') . " --color")
endfunction

function! CopyToClipboard(string)
  call system(g:rspec_helper_copy_command, a:string)
endfunction
