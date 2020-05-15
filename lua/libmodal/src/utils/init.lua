--[[
	/*
	 * IMPORTS
	 */
--]]

local api = vim.api
local globals = require('libmodal/src/base/globals')

--[[
	/*
	 * MODULE
	 */
--]]

local utils       = {}
utils.api         = require('libmodal/src/utils/api')
utils.Help        = require('libmodal/src/utils/Help')
utils.Indicator   = require('libmodal/src/utils/Indicator')
utils.vars        = require('libmodal/src/utils/vars')
utils.WindowState = require('libmodal/src/utils/WindowState')

--[[
	/*
	 * FUNCTIONS
	 */
--]]

----------------------------------
--[[ SUMMARY:
	* Show an error from `pcall()`.
]]
--[[ PARAMS:
	`pcallErr` => the error generated by `pcall()`.
]]
----------------------------------
function utils.showError(pcallErr)
	utils.api.nvim_bell()
	utils.api.nvim_show_err(
		globals.DEFAULT_ERROR_TITLE,
		api.nvim_get_vvar('throwpoint')
		.. '\n' ..
		api.nvim_get_vvar('exception')
		.. '\n' ..
		tostring(pcallErr)
	)
end

--[[
	/*
	 * PUBLICIZE MODULE
	 */
--]]

return utils
