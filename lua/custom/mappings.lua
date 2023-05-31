local M = {}

M.dap = {
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Update Crates",
    },
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

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window up" },
  },
}

M.git = {
  n = {
    ["<leader>gl"] = { ":Git blame<CR>", "All git blame lines" },
    ["<leader>di"] = { ":vert Git diff<CR>", "Git diff" },
    ["<leader>gs"] = { ":Git<CR>", "Git status" },
  },
}

M.nvterm = {
  n = {
    ["<leader>h"] = { "<cmd>silent !tmux split-window -v<CR>", "New Horizontal Term" },
    ["<leader>v"] = { "<cmd>silent !tmux split-window -h<CR>", "New Vertical Term" },
  },
}

return M
