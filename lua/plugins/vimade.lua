return {
	"tadaa/vimade",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		-- fade all of nvim when it loses focus (e.g. switching to another tmux pane).
		-- requires "set -g focus-events on" in tmux.conf
		enablefocusfading = true,
	},
}
