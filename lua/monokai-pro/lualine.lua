-- Import lualine
local lualine = require("lualine")

-- Define your custom color palette
-- local colors = require("monokai-pro.colorscheme")

-- Define a module table
local M = {}

-- Define a function to configure lualine
function M.setup()
  lualine.setup({
    options = {
      theme = "monokai-pro", -- Your custom theme
      icons_enabled = true,
      component_separators = { left = "╱", right = "╲" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = {
        {
          function()
            return ""
          end, -- Invisible component just to set separator color
          color = { fg = "#FFD866", bg = "background" }, -- First part of hack
          padding = 0,
        },
        {
          "mode",
        },
      },
      lualine_b = { "branch", "diff", { "diagnostics", sources = { "nvim_diagnostic" } } },
      lualine_c = { { "filename", file_status = true, path = 1 } },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = {
        { "location" },
        {
          function()
            return ""
          end,
          color = { fg = "#FFD866", bg = "background" }, -- First part of hack
          padding = 0,
        },
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    extensions = {},
  })
end

-- Return the module table
return M
