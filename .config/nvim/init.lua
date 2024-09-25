vim.loader.enable()

--[[ Provider ]]

vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

--[[ Commands ]]

vim.api.nvim_create_augroup("MyAutoCmd", { clear = true })

-- for obsidian.nvim
vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
  group = "MyAutoCmd",
  callback = function()
    if vim.api.nvim_buf_get_name(0):match(vim.fn.expand("~") .. "/Documents/default/.*.md") then
      vim.opt_local.conceallevel = 1
    end
  end,
})

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
