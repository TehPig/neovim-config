return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    -- required for filetype/highlighting and all buffers to restore correctly
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

    auto_session.setup({
      auto_restore = false,
      suppressed_dirs = { "/Downloads", "/Desktop", "Documents" }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
  end,
}
