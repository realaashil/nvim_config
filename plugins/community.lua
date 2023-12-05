return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.remote-development.distant-nvim" },
  { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
