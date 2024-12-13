vim.loader.enable()

--[[ Provider ]]

vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- Node.js
if vim.fn.executable("/usr/local/bin/neovim-node-host") == 1 then
  vim.g.node_host_prog = "/usr/local/bin/neovim-node-host"
else
  vim.g.loaded_node_provider = 0
end

vim.g.loaded_perl_provider = 0

--[[ Commands ]]

vim.api.nvim_create_augroup("MyAutoCmd", { clear = true })

vim.cmd([[command CD cd %:h]]) -- cd cwd

--[[ Settings ]]

vim.cmd("lan en_US.UTF-8")

vim.cmd([[filetype off]])
vim.cmd([[syntax off]])

require("core.options")
require("core.keymaps")
require("core.lazy")

vim.cmd([[filetype plugin indent on]])
vim.cmd([[syntax on]])
