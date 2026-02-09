return {
  "goolord/alpha-nvim",
  priority = 1000,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- =========================
    -- Header (Logo)
    -- =========================
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    -- Center header
    dashboard.section.header.opts = { position = "center" }

    -- =========================
    -- Buttons
    -- =========================
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("r", "  Recent Files", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("n", "  New File", "<cmd>ene<CR>"),
      dashboard.button("q", "󰗼  Quit", "<cmd>qa<CR>"),
    }

    dashboard.section.buttons.opts = { position = "center" }

    -- =========================
    -- Layout spacing
    -- =========================
    dashboard.opts.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
    }

    -- =========================
    -- Setup
    -- =========================
    alpha.setup(dashboard.opts)
  end,
}

