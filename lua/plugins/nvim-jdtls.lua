return {
  "mfussenegger/nvim-jdtls",
  dependencies = { "mfussenegger/nvim-dap" },
  ft = "java",
  -- config = function()
  --   local jdtls = require("jdtls")
  --
  --   -- Função para buscar os JARs automaticamente (evita erro de versão)
  --   local vscode_extensions = vim.fn.expand("~/dev/lsp/java/")
  --   local bundles = {}
  --
  --   -- Adiciona o Java Debug Adapter
  --   local debug_jar = vim.fn.glob(vscode_extensions .. "com.microsoft.java.debug.plugin-*.jar ", true)
  --   if debug_jar ~= "" then
  --     table.insert(bundles, debug_jar)
  --   end
  --
  --   -- Adiciona o Java Test Runner
  --   local test_jars = vim.fn.glob(vscode_extensions .. "java-test/com.microsoft.java.test.plugin*.jar", true)
  --   for _, jar in ipairs(vim.split(test_jars, "\n")) do
  --     if jar ~= "" then
  --       table.insert(bundles, jar)
  --     end
  --   end
  --
  --   local lombok_jar = vim.fn.glob("~/.vscode/extensions/redhat.java-1.50.0-linux-x64/lombok/lombok-*.jar")
  --   local cmd = { "jdtls", "--jvm-arg=-javaagent:" .. lombok_jar }
  --
  --   local config = {
  --     cmd = cmd,
  --     root_dir = jdtls.setup.find_root({ ".git", "mvnw", "gradlew" }),
  --
  --     init_options = {
  --       bundles = bundles,
  --     },
  --
  --     on_attach = function(client, bufnr)
  --       -- jdtls.setup_dap({ hotcodereplace = "auto" })
  --       -- require("jdtls.dap").setup_dap_main_class_configs()
  --
  --       local opts = { silent = true, buffer = bufnr }
  --       vim.keymap.set("n", "<leader>tc", jdtls.test_class, opts)
  --       vim.keymap.set("n", "<leader>tn", jdtls.test_nearest_method, opts)
  --     end,
  --   }
  --
  --   jdtls.start_or_attach(config)
  -- end,
}
