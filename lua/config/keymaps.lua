-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Compile and View LaTeX PDF
--vim.api.nvim_create_autocmd("FileType", {
--    pattern = "tex",
--    callback = function()
--        vim.keymap.set(
--            "n",
--            "<leader>tt",
--            ":!pdflatex %:p<CR>",
--            { buffer = true, desc = "Compile LaTeX with <leader><F11>" }
--        )
--        vim.keymap.set(
--            "n",
--            "<leader><F12>",
--            ":!zathura --fork %:r.pdf<CR>",
--            { buffer = true, desc = "Open PDF <leader><F12>" }
--        )
--    end,
--})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
        vim.keymap.set("n", "<leader><F11>", function()
            vim.cmd("!pdflatex " .. vim.fn.expand("%:p"))
        end, { buffer = true, desc = "Compile LaTeX with <leader><F11>" })

        vim.keymap.set("n", "<leader><F12>", function()
            vim.cmd("!zathura --fork " .. vim.fn.expand("%:r") .. ".pdf")
        end, { buffer = true, desc = "Open PDF <leader><F12>" })
    end,
})

--vim.keymap.set("n", "<leader>tt", function()
--    print("Test keymap works!")
--end, { desc = "Test Mapping" })
