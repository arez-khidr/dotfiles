# Nvim Configuration

The following configuration is a fork of [LazyVim](https://github.com/LazyVim/LazyVim).

The following notes are to better explain how configuration and modification works when using modified LazyVim as my configuration. For more information refer to the [documentation](https://www.lazyvim.org/). It is awesome 

## LSPs 

LSPs can be managed easily through LazyVim through the usage of LazyExtras. Which can be called with the LazyExtras command in nvim. 

Installing the language option under extras will handle all of the LSP setup for you. Albeit with the LSPs defaults. Thereby if you want to make modifications to the LSP, use a different LSP than the one provided. Or anything else, that must be done through your own plugins/lsp.lua file. 


## Modifying Plugins that are included in LazyVim. 

Lazyvim includes a set of [core plugins](https://www.lazyvim.org/plugins). Now if you want to make a modification to these plugins, there are a few things to do. 

Lazy includes these plugins through the Lazy.lua file, this is the file that bootstraps the entire nvim configuration (through being called in the init.lua file). 

Note the following lines of code: 

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },
  },

Note that lazy imports all of the plugins from the plugins file defined in the LazyVim/LazyVim github repo. Now if you want to make a modification to any of these plugins that are included. Here is what you should do. 

1. View the specs that are currently defined for that plugin. Find those on the Github or preferably from [this website](https://www.lazyvim.org/plugins)
2. Create your own plugin file for that plugin inside of the plugin directory
3. Include modifications that you want to create/override in that file. You DO NOT need to include the entire spec if you are only modifying some things. As Lazy will still load it. 

Now, lets say instead of just modifying a plugin you want to totally disable it. You can do so by modifying including a disabled.lua file with the spec enabled = false. 

return {
  -- disable trouble
  { "folke/trouble.nvim", enabled = false },
}
}


