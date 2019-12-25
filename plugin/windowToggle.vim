" Initial commit
	nnoremap <silent> <leader>O :call ToggleTerminal() <cr>

function! ToggleTerminal()
	if !exists("g:termname")
		execute 'sp | res 10 | term'
		let g:termname = bufname()
	else
		execute 'bunload!' g:termname
		unlet g:termname
	endif
endfunction
