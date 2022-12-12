local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if vim.g.vscode then
  require('g3ar.base')
  require('g3ar.highlights')
  require('g3ar.maps')
  require('g3ar.plugins')
else
  require('g3ar.base')
  require('g3ar.highlights')
  require('g3ar.maps')
  require('g3ar.plugins')
end

if is_mac then
  require('g3ar.macos')
end
if is_win then
  require('g3ar.windows')
end
