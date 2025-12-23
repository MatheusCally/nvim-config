return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
        model = 'claude-sonnet-4.5'
--	    require('fzf-lua').register_ui_select()
    },
  },
}
