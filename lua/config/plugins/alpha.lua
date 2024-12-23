return {
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      local icons = {
        ui = {
          file = "",
          open_folder = "",
          config = "",
          close = "Ⓧ",
          lazy = "󰒲",
        },
      }

      local function center_header(header)
        local width = vim.api.nvim_win_get_width(0)   -- Get the width of the current window
        local padding = math.floor((width - #header[1]) / 2) -- Calculate padding based on the first line length
        for i, line in ipairs(header) do
          header[i] = string.rep(" ", padding) .. line
        end
        return header
      end

      local custom_header = center_header({
        [[                                                   ]],
        [[                                              ___  ]],
        [[                                           ,o88888 ]],
        [[                                        ,o8888888' ]],
        [[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
        [[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
        [[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
        [[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
        [[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
        [[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
        [[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
        [[             . ..:.::o:ooooOoCoCCC"o:o             ]],
        [[             . ..:.::o:o:,cooooCo"oo:o:            ]],
        [[          `   . . ..:.:cocoooo"'o:o:::'            ]],
        [[          .`   . ..::ccccoc"'o:o:o:::'             ]],
        [[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
        [[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
        [[     ...:.'.:.::::"'    . . . . .'                 ]],
        [[    .. . ....:."' `   .  . . ''                    ]],
        [[  . . . ...."'                                     ]],
        [[  .. . ."'                                         ]],
        [[ .                                                 ]],
        [[                                                   ]],
      })

      local buttons = {
        dashboard.button("e", icons.ui.file .. "   New File", "<cmd>enew<CR>"),
        dashboard.button("o", icons.ui.file .. "   Recent Files", "<cmd>Telescope oldfiles<CR>"),
        dashboard.button("l", icons.ui.lazy .. "   Lazy", "<cmd>Lazy<CR>"),
        dashboard.button("q", icons.ui.close .. "   Quit NVIM", ":qa<CR>"),
      }

      local footer = {
        type = "text",
        val = { "⚡" .. require("lazy").stats().loaded .. " plugins loaded." },
        opts = { position = "center", hl = "Comment" },
      }

      alpha.setup({
        layout = {
          { type = "padding", val = 8 },
          { type = "text",    val = custom_header },
          { type = "padding", val = 2 },
          { type = "group",   val = buttons },
          { type = "padding", val = 1 },
          footer,
        },
      })
    end
  }
}
