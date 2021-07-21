local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")

if not lspconfig.psalm then
  configs.psalm = {
    default_config = {
      cmd = "psalm",
      filetypes = {"php"},
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname)
      end,
      settings = {}
    }
  }
end
