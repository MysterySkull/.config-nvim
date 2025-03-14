return {
   {
      'akinsho/bufferline.nvim',
      version = "*",
      dependencies = 'nvim-tree/nvim-web-devicons',
      config = function()
         require("bufferline").setup{
            options = {
               offsets = {
                  {
                     filetype = "NvimTree",
                     --text = "File Explorer",
                     --text_align = "left",
                     separator = true
                  }
               },
               separator_style = "slant",
               diagnostics = 'nvim_lsp',
               diagnostics_indicator = function(count, level, diagnostics_dict, context)
                  local icon = level:match("error") and " " or " "
                  return " " .. icon .. count
               end
            }
         }
      end,
   }
}
