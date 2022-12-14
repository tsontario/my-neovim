local actions = require "telescope.actions"

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
      }
    }
  }
})

