-- Madrix NVIM config
-- shlok.surge.sh
-- github.com/madrix01

require('packages')
require('config')
require('keybindings')
require('monokai').setup { palette = require('monokai').pro }

require'nvim-treesitter.configs'.setup {
    highlight = { -- enable highlighting
        enable = true, 
    },
    indent = {
        enable = true, -- default is disabled anyways
    }
}

require('nvim-autopairs').setup{}
require('bufferline').setup{}
