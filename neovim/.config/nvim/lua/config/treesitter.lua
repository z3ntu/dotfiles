require'nvim-treesitter'.install { 'blueprint', 'slint' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'blueprint', 'slint' },
  callback = function() vim.treesitter.start() end,
})
