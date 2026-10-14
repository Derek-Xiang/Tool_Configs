return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  keys = {
    { "<leader>gv", "<cmd>CodeDiff<cr>", desc = "CodeDiff (Repo Changes)" },
    { "<leader>gV", "<cmd>CodeDiff file HEAD<cr>", desc = "CodeDiff (Current File vs HEAD)" },
  },
}
