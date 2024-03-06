-- set leader key to space
vim.g.mapleader = " "

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- brings up lazy plugin UI
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>E", ":Explore<cr>", { desc = "Opens Explore tree" })

-- allows moving highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-3<CR>gv=gv")

-- new file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- C-d, C-u are used for half-page jumping, but remapping to do zz to keep cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps cursor in the middle when cycling through search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- lets you start replacing the word and other instances of that same word that you're on
vim.keymap.set(
	"n",
	"<leader>rw",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace all instances of current word" }
)

-- tmux keymaps - changes sessions (custom name or by dirname)
vim.keymap.set(
	"n",
	"<C-f>",
	[[:execute "!~/.dotfiles/scripts/tmux-sessions.sh"<CR>]],
	{ desc = "Change tmux sessions" }
)
vim.keymap.set(
	"n",
	"<C-g>",
	[[:execute "!~/.dotfiles/scripts/tmux-sessions-by-dirname.sh"<CR>]],
	{ desc = "Change tmux sessions by dirname" }
)

-- clear search highlights
vim.keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "Clear search highlights" })
