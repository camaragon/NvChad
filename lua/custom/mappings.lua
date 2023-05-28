local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window up" },
  },
}

M.custom = {
  n = {
    ["<leader>q"] = { "<cmd>q!<cr>", "Force Quit" },
    -- ["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },
    ["<leader>s"] = { "<cmd>w!<cr>", "Save File" },
    ["<leader>rp"] = { ":let @+=expand('%:~:.')<CR>", "Copy Relative Path" },
  },
}

M.nvterm = {
  n = {
    ["<leader>h"] = { "<cmd>silent !tmux split-window -v<CR>", "New Horizontal Term" },
    ["<leader>v"] = { "<cmd>silent !tmux split-window -h<CR>", "New Vertical Term" },
  },
}

return M
