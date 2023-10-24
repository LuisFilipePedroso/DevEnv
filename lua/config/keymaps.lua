local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<C-d>", "16jzz")
map("n", "<C-u>", "16kzz")

map("n", "<A-BS>", "daw", { desc = "Delete around word" })
map("v", "<leader>rc", "c<esc>dd", { desc = "Cut lines" })
map("n", "<leader>rw", "caw", { desc = "Replace around word" })
map("n", "<leader>rs", ":%s/", { desc = "Search and replace" })
map("n", "<leader>rr", "<cmd>so %<cr>", { noremap = true, desc = "Reload vimrc", silent = true })

-- typescript
-- map("n", "<leader>cu", "<cmd>TypescriptRemoveUnused<cr>", { desc = "Remove unused imports" })
-- map("n", "<leader>ci", "<cmd>TypescriptAddMissingImports<cr>", { desc = "Add Missing Imports" })
-- map("n", "<leader>co", "<cmd>TypescriptOrganizeImports<cr>", { desc = "Add Organize Imports" })

map({ "v", "n", "x" }, "x", '"_x')
map({ "v", "n", "x" }, "X", '"_X')
map({ "v", "n", "x" }, "d", '"_d')
map({ "v" }, "p", '"_dp')
map({ "v" }, "P", '"_dP')
map({ "v", "n", "x" }, "<Del>", '"_x')
map("n", "<leader>p", "o<Esc>0p", { desc = "Paste above" })
map("n", "<leader>P", "O<Esc>0P", { desc = "Paste bellow" })

map("n", "gg", "gg0", { desc = "Go to begginning" })

-- diagnostics
map("n", "<leader>cD", "<cmd>DiagWindowShow<cr>", { desc = "Open Diagnostics" })

map("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<C-k>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<C-j>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

map("n", "gld", "<CMD>Glance definitions<CR>", { desc = "Definitions" })
map("n", "glr", "<CMD>Glance references<CR>", { desc = "References" })
map("n", "gly", "<CMD>Glance type_definitions<CR>", { desc = "Type definitions" })
map("n", "glm", "<CMD>Glance implementations<CR>", { desc = "Implementations" })

map("n", "<leader>h", "<cmd>lua require('tsht').nodes()<CR>", { desc = "Show places to hop" })
