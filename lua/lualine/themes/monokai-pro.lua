local colors = require("monokai-pro.colorscheme")

local M = {}

M.normal = {
  a = { bg = colors.base.accent, fg = colors.base.background, gui = "bold" },
  b = { bg = colors.base.dimmed5, fg = colors.base.accet },
  c = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
  x = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
}

M.insert = {
  a = { bg = colors.base.green, fg = colors.base.background },
  b = { bg = colors.base.dimmed5, fg = colors.base.green },
}

M.command = {
  a = { bg = colors.base.accent, fg = colors.base.background },
  b = { bg = colors.base.dimmed5, fg = colors.base.accent },
}

M.visual = {
  a = { bg = colors.base.magenta, fg = colors.base.background },
  b = { bg = colors.base.dimmed5, fg = colors.base.magenta },
}

M.replace = {
  a = { bg = colors.base.red, fg = colors.base.background },
  b = { bg = colors.base.dimmed5, fg = colors.base.red },
}

M.inactive = {
  a = { bg = colors.base.background, fg = colors.base.yellow },
  b = { bg = colors.base.background, fg = colors.base.background },
  -- c = { bg = colors.base.background, fg = colors.base.background },
}

--M.options = {
--  icons_enabled = true,
--  component_separators = { left = "╱", right = "╲" },
--  section_separators = { left = "", right = "" },
--}

--M.sections = {
--  lualine_a = {
--    {
--      function()
--        return ""
--      end, -- Invisible component just to set separator color
--      color = { fg = "#FFD866", bg = "background" }, -- First part of hack
--      padding = 0,
--    },
--    {
--      "mode",
--    },
--  },
--  lualine_b = { "branch", "diff", { "diagnostics", sources = { "nvim_diagnostic" } } },
--  lualine_c = { { "filename", file_status = true, path = 1 } },
--  lualine_x = { "encoding", "fileformat", "filetype" },
--  lualine_y = { "progress" },
--  lualine_z = {
--    { "location" },
--    {
--      function()
--        return ""
--      end,
--      color = { fg = "#FFD866", bg = "background" }, -- First part of hack
--      padding = 0,
--    },
--  },
--}

return M
