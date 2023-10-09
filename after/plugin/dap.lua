local dap = require('dap')
dap.adapters.python = {
    type = 'python';
    request = 'launch';
    name = 'Launch file';
    program = '${file}';
    pythonPath = 'c:\\Program Files\\Python310\\python3.exe'
}
--dap.adapters.go = {
--    type = 'go';
--    request = 'launch';
--    name = 'Launch file';
--    program = '${file}';
--}
