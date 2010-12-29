function s:FrogstarBPreview()
  python << PYTHON
import vim, frogstarb
config = frogstarb.config()
frogstarb.preview(vim.current.buffer.name,config)
PYTHON
endfunction

function s:FrogstarBPythonWarning()
  echohl WarningMsg
  echo "frogstarb.vim requires Vim to be compiled with Python support"
  echo "For more information type:  :help frogstarb"
  echohl none
endfunction

:command! Fr :call <SID>FrogstarBPreview()
:command! Fh :call <SID>FrogstarBPythonWarning()
map <leader>r :Fr<CR>

