return {
   {
      "neovim/nvim-lspconfig",
      dependencies = {
         -- main one
         { "ms-jpq/coq_nvim", branch = "coq" },

         -- 9000+ Snippets
         { "ms-jpq/coq.artifacts", branch = "artifacts" },

         -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
         -- Need to **configure separately**
         { 'ms-jpq/coq.thirdparty', branch = "3p" },
         -- - shell repl
         -- - nvim lua api
         -- - scientific calculator
         -- - comment banner
         -- - etc
         {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
               library = {
                  -- See the configuration section for more details
                  -- Load luvit types when the `vim.uv` word is found
                  { path = "${3rd}/luv/library", words = { "vim%.uv" } },
               },
            },
         },
      },
      init = function()
         vim.g.coq_settings = {
            auto_start = 'shut-up', -- if you want to start COQ at startup
            -- Your COQ settings here
            display = {
               pum = {
                  source_context = {"",""}
               }
            },
            keymap = {
               bigger_preview = 'null',
               jump_to_mark = 'null',
            }
         }
      end,

      config = function()
         require('lspconfig').lua_ls.setup({
            settings = {
               Lua = {}
            }
         })
      end,
   },
}









