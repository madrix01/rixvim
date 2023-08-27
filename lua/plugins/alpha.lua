return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.startify")
    local logo = [[
██████╗ ██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗
██╔══██╗██║╚██╗██╔╝██║   ██║██║████╗ ████║
██████╔╝██║ ╚███╔╝ ██║   ██║██║██╔████╔██║
██╔══██╗██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║
██║  ██║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
    ]]

    dashboard.section.header.val = vim.split(logo, "\n")
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    require("alpha").setup(dashboard.opts)
  end,
}
