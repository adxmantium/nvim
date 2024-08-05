-- set leader key to space
vim.g.mapleader = " "

-- save with leader w instead
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

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

-- keymap to run test file for current buffer
vim.keymap.set("n", "<leader>tr", function()
	local bufname = vim.fn.bufname("%")
	local test_filename = bufname:gsub("%.js$", ".test.js")

	-- if current buffer is already a test file, the set it as test_filename
	if bufname:find("%.test.js$") then
		test_filename = bufname
	end

	local f = io.open(test_filename, "r")

	if f ~= nil then
		-- If test file exists, close it (only opened to check if it exists)
		io.close(f)

		-- Capture the output of the test cmd
		local output = vim.fn.system("npm run test -- " .. test_filename)

		-- Create new scratch & put the output into it
		vim.cmd("new")
		local bufnr = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_option(bufnr, "buftype", "nofile")
		vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, vim.split(output, "\n"))
	else
		-- if test file does not exists, show alert
		print("No test file exists for " .. bufname)
	end
end, { noremap = true, silent = true, desc = "Run test file for current buffer" })

-- keymap to open test file for current buffer in a split buffer
vim.keymap.set("n", "<leader>to", function()
	local bufname = vim.fn.bufname("%")
	local test_filename = bufname:gsub("%.js$", ".test.js")
	local f = io.open(test_filename, "r")

	if f ~= nil then
		-- If test file exists, open it in vertical split
		io.close(f)
		vim.cmd("vsplit " .. test_filename)
	else
		-- if test file does not exists, show alert
		print("No test file exists for " .. bufname)
	end
end, { noremap = true, silent = true, desc = "Open test file for current buffer" })
