require("coverage").setup{
	coverage_file = "coverage.out",
	-- opts = {
	-- 	auto_reload = true,
	-- 	lang = {
	-- 		go = {coverage_file = "coverage.out",},
	-- 	},
	-- },

	-- commands = true, -- create commands
	-- highlights = {
	-- 	-- customize highlight groups created by the plugin
	-- 	covered = { fg = "#C3E88D" },   -- supports style, fg, bg, sp (see :h highlight-gui)
	-- 	uncovered = { fg = "#F07178" },
	-- },
	-- signs = {
	-- 	-- use your own highlight groups or text markers
	-- 	covered = { hl = "CoverageCovered", text = "▎" },
	-- 	uncovered = { hl = "CoverageUncovered", text = "▎" },
	-- },
	-- summary = {
	-- 	-- customize the summary pop-up
	-- 	min_coverage = 80.0,      -- minimum coverage threshold (used for highlighting)
	-- },
	-- lang = {
	-- 	-- customize language specific settings
	-- },
}
