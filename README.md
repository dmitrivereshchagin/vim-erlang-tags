# vim-erlang-tags

## The idea

`vim-erlang-tags` **creates a tags file** (from Erlang source files), which can
be used by Vim.

When using Exuberant ctags or etags, the generated tags will contain function
names, but there will be no `module:function` tags. This is a problem
because if several functions (in different modules) have the same name, the
text editor will not know which one to jump to.

The idea of this script is to generate `module:function` tags too. This way the
code will be **easier to navigate than with ctags or etags**. The original idea
is from László Lövei.

Since `:` is not a keyword character when editing Erlang files in Vim, this
repository also contains a Vim plugin, which modifies the following normal mode
commands to add `:` to the `iskeyword` option for Erlang files while they are
jumping to the location of the tag that is under the cursor.
