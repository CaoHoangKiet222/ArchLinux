local status_ok, auto_session = pcall(require, "auto-session")
if not status_ok then
	return
end

auto_session.setup({
	auto_session_enable_last_session = true,
	auto_session_enabled = false,
	auto_save_enabled = true,
	auto_restore_enabled = false,
	auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
	auto_session_create_enabled = true,
})
