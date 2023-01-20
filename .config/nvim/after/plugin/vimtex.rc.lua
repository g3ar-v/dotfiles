-- local has = vim.fn.has

-- local is_mac = has "macunix"

-- if is_mac then
--   vimtex.setup({
--     opt = true,
--     config = function()

--       vim.g.vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
--       vim.g.vimtex_view_general_options = '-r @line @pdf @tex'
--       vim.g.vimtex_compiler_latexmk_engines = {
--         _ = 'latexmk'
--       }

--       -- vim.g.tex_comment_nospell = 1
--       -- vim.g.vimtex_compiler_progname = 'nvr'
--       -- vim.g.vimtex_view_general_options_latexmk = '--unique'
--       local function SetupVimtexMac()
--         vim.cmd [[augroup vimtex_mac]]
--         vim.cmd [[autocmd!]]
--         vim.cmd [[autocmd User VimtexEventCompileSuccess call UpdateSkim()]]
--         vim.cmd [[augroup END]]
--       end

--       local function UpdateSkim()
--         local out = vim.b.vimtex.out()
--         local src_file_path = vim.fn.expand('%:p')
--         local cmd = { vim.g.vimtex_view_general_viewer, "-r" }

--         if vim.fn.system('pgrep Skim') ~= "" then
--           table.insert(cmd, "-g")
--         end

--         vim.fn.jobstart(vim.list_extend(cmd, { vim.fn.line("."), out, src_file_path }))

--       end
--     end,
--   })

-- end
