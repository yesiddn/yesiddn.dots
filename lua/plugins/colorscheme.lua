return {
  -- {
  --   {
  --     "xiyaowong/transparent.nvim",
  --     config = function()
  --       require("transparent").setup({
  --         enable = false, -- boolean: enable transparent
  --         extra_groups = { -- table/string: additional groups that should be cleared
  --           "Normal",
  --           "NormalNC",
  --           "Comment",
  --           "Constant",
  --           "Special",
  --           "Identifier",
  --           "Statement",
  --           "PreProc",
  --           "Type",
  --           "Underlined",
  --           "Todo",
  --           "String",
  --           "Function",
  --           "Conditional",
  --           "Repeat",
  --           "Operator",
  --           "Structure",
  --           "LineNr",
  --           "NonText",
  --           "SignColumn",
  --           "CursorLineNr",
  --           "EndOfBuffer",
  --         },
  --         exclude = {}, -- table: groups you don't want to clear
  --       })
  --       vim.cmd("TransparentEnable") -- execute the command to enable transparency
  --     end,
  --   },
  --   { "rktjmp/lush.nvim" },
  --   {
  --     "anAcc22/sakura.nvim",
  --     -- config = function()
  --     --   vim.opt.background = "dark"
  --     --   vim.cmd("colorscheme sakura")
  --     -- end,
  --   }
  -- },
  -- {
  --   "dgox16/oldworld.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     variant = "oled",
  --   },
  -- },
  -- {
  --   "miikanissi/modus-themes.nvim",
  --   name = "modus",
  --   priority = 1000,
  -- },
  {
    -- Plugin for the Kanagawa color scheme
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000, -- High priority to ensure it loads early
    opts = {
      transparent = true, -- Enable transparent background
      theme = "dragon", -- Set the theme variant to 'dragon'
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" }, -- Transparent background for floating windows
          FloatBorder = { bg = "none" }, -- Transparent background for floating window borders
          FloatTitle = { bg = "none" }, -- Transparent background for floating window titles
  
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 }, -- Custom colors for dark mode
  
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Lazy plugin
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Mason plugin
  
          FzfLuaNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 }, -- Custom colors for FzfLua normal
          FzfLuaBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 }, -- Custom colors for FzfLua border
          FzfLuaTitle = { fg = theme.ui.special, bold = true }, -- Custom colors for FzfLua title
  
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Custom colors for popup menu
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Custom colors for selected item in popup menu
          PmenuSbar = { bg = theme.ui.bg_m1 }, -- Custom colors for popup menu scrollbar
          PmenuThumb = { bg = theme.ui.bg_p2 }, -- Custom colors for popup menu thumb
        }
      end,
    },
  },
  {
    -- LazyVim configuration
    "LazyVim/LazyVim",
    opts = {
      -- Set the default color scheme
      colorscheme = "kanagawa-dragon",
    },
  },
}
