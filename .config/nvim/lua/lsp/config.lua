require('lsp/efm')
require('lsp/tsserver')
require('lsp/graphql')
require('lsp/html')
require('lsp/css')
require('lsp/tailwind')

vim.fn.sign_define("LspDiagnosticsSignError",       { text = " 🞮", numhl = "LspDiagnosticsDefaultError" })
vim.fn.sign_define("LspDiagnosticsSignWarning",     { text = " ▲", numhl = "LspDiagnosticsDefaultWarning" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { text = " ⁈", numhl = "LspDiagnosticsDefaultInformation" })
vim.fn.sign_define("LspDiagnosticsSignHint",        { text = " ⯁", numhl = "LspDiagnosticsDefaultHint" })

