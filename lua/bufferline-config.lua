require("bufferline").setup({
  options = {
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true,
    diagnostics = "nvim-lsp",
    offsets = { 
      { 
        filetype = "nerdtree", 
        text = "File Explorer", 
        text_align = "center",
        separator = true,
        highlight = {
          "Pmenu"
        } 
      } 
    }, 
    separator_style = { 
      "", "" 
    },     
  },
})

