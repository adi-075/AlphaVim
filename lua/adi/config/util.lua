function load(name)
	local path = vim.fn.stdpath('config') .. '/lua/' .. name .. '.lua'
	dofile(path)
end

