-- Maybe it is a good idea to move to Snacks for most of QoL things
-- and replace Telescope, nvin-tree, alpha, etc
return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		input = { enabled = true },
		notifier = { enabled = true },
		bigfile = { enabled = true },
		quickfile = { enabled = true },
		words = { enabled = true },
	},
}
