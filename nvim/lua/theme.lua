require('nightfox').setup({
  options = {
    styles = {
      comments = "italic",
	  functions = "bold",
      keywords = "bold",
      variables = "italic,bold",
    }
  }
})

vim.cmd("colorscheme nordfox")
