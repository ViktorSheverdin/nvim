# Neovim Configuration

Personal Neovim configuration built on **Lazy.nvim** plugin manager with the **Tokyo Night** color scheme.

**Leader key:** `Space`
**Local leader:** `\`

---

## Plugins Overview

### UI & Theme
| Plugin | Purpose |
|--------|---------|
| **tokyonight.nvim** | Tokyo Night color scheme (night variant) |
| **alpha-nvim** | Startup dashboard with quick actions |
| **lualine.nvim** | Custom status line with mode colors |
| **bufferline.nvim** | Tab-like buffer bar at the top |
| **which-key.nvim** | Keybinding help popup (shows after 500ms) |
| **nvim-web-devicons** | File type icons throughout the UI |

### Navigation & Search
| Plugin | Purpose |
|--------|---------|
| **telescope.nvim** | Fuzzy finder for files, text, LSP symbols, keymaps, and more |
| **telescope-fzf-native.nvim** | Native FZF sorting for faster Telescope results |
| **nvim-tree.lua** | File explorer sidebar with git integration |
| **vim-tmux-navigator** | Seamless `Ctrl+h/j/k/l` navigation between Neovim and tmux panes |
| **trouble.nvim** | Better diagnostics, quickfix, and location list UI |
| **todo-comments.nvim** | Highlights and lets you search TODO/FIXME/HACK comments |

### Code Editing & Completion
| Plugin | Purpose |
|--------|---------|
| **nvim-treesitter** | Syntax highlighting and code understanding via tree-sitter parsers |
| **nvim-autopairs** | Auto-close brackets, quotes, and parentheses |
| **nvim-ts-autotag** | Auto-close and auto-rename HTML/JSX tags |
| **nvim-cmp** | Completion engine with multiple sources (LSP, buffer, path, snippets) |
| **LuaSnip** + **friendly-snippets** | Snippet engine with a large VSCode-style snippet library |
| **lspkind.nvim** | VSCode-like icons in the completion menu |
| **conform.nvim** | Code formatter (prettier, stylua, black, isort) |
| **nvim-surround** | Add, delete, and change surrounding pairs (brackets, quotes, tags) |

### LSP (Language Server Protocol)
| Plugin | Purpose |
|--------|---------|
| **nvim-lspconfig** | LSP client configuration |
| **mason.nvim** | Installs and manages LSP servers and tools |
| **mason-lspconfig.nvim** | Bridges Mason with nvim-lspconfig |
| **mason-tool-installer.nvim** | Auto-installs formatters and linters |
| **nvim-lsp-file-operations** | LSP-aware file rename/delete |
| **lazydev.nvim** | Lua development support with type hints |

**Configured LSP servers:** TypeScript, HTML, CSS, Tailwind CSS, Lua, GraphQL, Prisma, Python (pyright), ESLint

### Git & Productivity
| Plugin | Purpose |
|--------|---------|
| **vim-fugitive** | Full Git integration via `:Git` commands |
| **auto-session** | Auto save/restore editing sessions per directory |
| **undotree** | Visual undo history tree |
| **snacks.nvim** | Quality-of-life features: input dialogs, notifications, bigfile mode, word highlighting |

---

## All Keybindings

### Core Navigation & Editing

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>pv` | Open netrw file explorer | **P**roject **V**iew | You just opened Neovim and want to browse the project directory to find a file |
| `<leader>nh` | Clear search highlights | **N**o **H**ighlight | You searched for a word with `/`, found it, and now want to dismiss the yellow highlights |
| `<leader>+` | Increment number under cursor | Plus = bigger | You're editing a CSS `z-index: 10` and want to bump it to 11 without retyping |
| `<leader>-` | Decrement number under cursor | Minus = smaller | You have `margin: 5px` and want to reduce it to 4 quickly |

### Window Splits

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>sv` | Split window vertically | **S**plit **V**ertical | You want to see `index.ts` and `styles.css` side by side while styling a component |
| `<leader>sh` | Split window horizontally | **S**plit **H**orizontal | You want a test file below and the source file above for test-driven development |
| `<leader>se` | Make all splits equal size | **S**plit **E**qual | After resizing splits manually, you want to reset them to even proportions |
| `<leader>sx` | Close current split | **S**plit e**X**it | You're done comparing two files and want to go back to a single pane |

### Tabs

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>to` | Open new tab | **T**ab **O**pen | You want a separate workspace for a different feature while keeping your current layout |
| `<leader>tx` | Close current tab | **T**ab e**X**it (X = close) | You finished working on a side task and want to close that tab |
| `<leader>tn` | Go to next tab | **T**ab **N**ext | You have frontend code in tab 1 and backend in tab 2, and want to switch forward |
| `<leader>tp` | Go to previous tab | **T**ab **P**revious | You just went to the next tab but realized you need the previous one |
| `<leader>tf` | Open current buffer in new tab | **T**ab **F**ile (this file in a new tab) | You want to focus on one file fullscreen in its own tab without losing your split layout |

### File Explorer (NvimTree)

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>ee` | Toggle file explorer | **E**xplorer **E**nable/toggle | You want to browse the project tree to get an overview of the folder structure |
| `<leader>ef` | Find current file in explorer | **E**xplorer **F**ind | You're editing a deeply nested file and want to see where it sits in the tree |
| `<leader>ec` | Collapse all folders in explorer | **E**xplorer **C**ollapse | The tree is fully expanded and cluttered; collapse everything to start fresh |
| `<leader>er` | Refresh file explorer | **E**xplorer **R**efresh | You created files from the terminal and the tree hasn't updated yet |

### Telescope (Fuzzy Finder)

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>ff` | Find files by name | **F**ind **F**iles | You know a file is called `userService.ts` but don't remember the path |
| `<leader>fr` | Find recently opened files | **F**ind **R**ecent | You were editing a config file earlier today and want to jump back to it |
| `<leader>fs` | Live grep (search text in all files) | **F**ind **S**tring | You want to find every file that references `handleSubmit` across the project |
| `<leader>fc` | Grep the word under cursor | **F**ind under **C**ursor | Your cursor is on `UserContext` and you want to see all usages instantly |
| `<leader>ft` | Find TODO/FIXME comments | **F**ind **T**odos | Before a release, you want to check if there are any outstanding TODOs left |
| `<leader>fk` | Find and search keymaps | **F**ind **K**eymaps | You forgot a keybinding and want to search for it by description |

**Inside Telescope picker:**

| Keys | Description | Mnemonic |
|------|-------------|----------|
| `Ctrl+j` | Move to next result | **j** = down (Vim convention) |
| `Ctrl+k` | Move to previous result | **k** = up (Vim convention) |
| `Ctrl+q` | Send results to quickfix via Trouble | **q** = quickfix |
| `Ctrl+t` | Open results in Trouble | **t** = Trouble |

### LSP (Language Server)

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `gd` | Go to definition | **G**o to **D**efinition | You see `calculateTotal()` being called and want to jump to where it's defined |
| `gD` | Go to declaration | **G**o to **D**eclaration (capital = higher-level) | You want to see where a variable or type is declared (e.g., an interface) |
| `gR` | Show all references | **G**o to **R**eferences | You want to know every place in the project that calls `validateEmail()` |
| `gi` | Show implementations | **G**o to **I**mplementation | You have an interface `Logger` and want to see all classes that implement it |
| `gt` | Show type definitions | **G**o to **T**ype | Your cursor is on a variable and you want to see the type/interface it uses |
| `K` | Hover documentation | **K** = look up (Vim convention) | You want to see the function signature, parameter types, and JSDoc without leaving the file |
| `<leader>ca` | Code actions | **C**ode **A**ction | A squiggly underline suggests an import is missing; open actions to auto-import |
| `<leader>rn` | Rename symbol | **R**e**N**ame | You want to rename `getData` to `fetchUserData` across every file that uses it |
| `<leader>D` | Buffer diagnostics (Telescope) | **D**iagnostics (capital = full buffer) | You want to see all errors and warnings in the current file in a searchable list |
| `<leader>d` | Line diagnostics (float) | **d**iagnostics (lowercase = single line) | There's a red squiggly on a line and you want to read the full error message |
| `[d` | Previous diagnostic | **[** = backward, **d** = diagnostic | You're fixing errors top to bottom and want to jump to the previous one you skipped |
| `]d` | Next diagnostic | **]** = forward, **d** = diagnostic | You fixed an error and want to hop to the next one without scrolling |
| `<leader>rs` | Restart LSP | **R**estart **S**erver | The LSP is acting up (stale errors, no completions) and you want to restart it |

### Completion (Insert Mode)

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `Ctrl+j` | Select next completion item | **j** = down | You're scrolling through suggestions and want the next one |
| `Ctrl+k` | Select previous completion item | **k** = up | You scrolled past the right suggestion and want to go back |
| `Ctrl+b` | Scroll docs up | **B**ack (up in docs) | A function's documentation is long and you want to scroll up |
| `Ctrl+f` | Scroll docs down | **F**orward (down in docs) | You want to read more of the documentation below |
| `Ctrl+Space` | Trigger completion manually | Space = summon menu | Autocomplete didn't appear and you want to force it open |
| `Ctrl+e` | Close completion menu | **E**xit / **E**scape | The suggestions are distracting and you want to dismiss them |
| `Enter` | Confirm selection | Enter = accept | You see the right suggestion highlighted and want to insert it |

### Formatting

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>mp` | Format file or selection | **M**ake **P**retty | You pasted code from StackOverflow and the indentation is a mess |

### Surround (nvim-surround)

Three core operators: **y**ou **s**urround (add), **d**elete **s**urround (delete), **c**hange **s**urround (change).

#### Adding Surroundings (`ys` — **Y**ou **S**urround)

| Keys | Example Before | Example After | Mnemonic | Use Case |
|------|---------------|---------------|----------|----------|
| `ysiw)` | `hello` | `(hello)` | **Y**ou **S**urround **I**nner **W**ord with `)` | You're wrapping a variable in a function call like `print(hello)` |
| `ysiw(` | `hello` | `( hello )` | Same but `)` = tight, `(` = spaced | You want padded parens for readability: `assert( value )` |
| `ysiw]` | `hello` | `[hello]` | Closing bracket = no spaces | You're making an array index like `arr[index]` |
| `ysiw[` | `hello` | `[ hello ]` | Opening bracket = with spaces | You want spaced brackets for a template expression |
| `ysiw"` | `hello` | `"hello"` | Surround word with double quotes | You need to turn a bare word into a string: `"hello"` |
| `ysiw'` | `hello` | `'hello'` | Surround word with single quotes | You're wrapping a key in single quotes for a dictionary |
| `ysiw}` | `hello` | `{hello}` | Closing brace = tight | You're wrapping a variable in JSX: `{hello}` |
| `ysiw{` | `hello` | `{ hello }` | Opening brace = spaced | You want spaced braces like in a JS object destructure |
| `ys$"` | `make strings` | `"make strings"` | Surround from cursor to end of line | You want to quote everything from cursor to end of the line |
| `ysiw<tag>` | `hello` | `<tag>hello</tag>` | Surround word with HTML tag | You're wrapping text in `<span>hello</span>` |
| `yssb` or `yss)` | `hello world` | `(hello world)` | **S**urround whole **S**entence (line) with **b**rackets | You want to wrap an entire line in parentheses |

> **Tip:** Closing bracket `)`/`]`/`}` = tight (no spaces). Opening bracket `(`/`[`/`{` = padded (with spaces).

#### Deleting Surroundings (`ds` — **D**elete **S**urround)

| Keys | Example Before | Example After | Mnemonic | Use Case |
|------|---------------|---------------|----------|----------|
| `ds"` | `"hello"` | `hello` | **D**elete **S**urround `"` | You want to remove quotes from a string you're inlining |
| `ds'` | `'hello'` | `hello` | **D**elete **S**urround `'` | Removing quotes from a dictionary key |
| `ds)` | `(hello)` | `hello` | **D**elete **S**urround `)` | You're unwrapping a value from a function call |
| `ds]` | `[hello]` | `hello` | **D**elete **S**urround `]` | Removing brackets from an array index |
| `ds}` | `{hello}` | `hello` | **D**elete **S**urround `}` | Removing braces from a JSX expression |
| `dst` | `<b>hello</b>` | `hello` | **D**elete **S**urround **T**ag | You want to strip an HTML tag but keep the text content |
| `dsf` | `print(hello)` | `hello` | **D**elete **S**urround **F**unction | You want to remove a function call but keep the argument |

#### Changing Surroundings (`cs` — **C**hange **S**urround)

| Keys | Example Before | Example After | Mnemonic | Use Case |
|------|---------------|---------------|----------|----------|
| `cs'"` | `'hello'` | `"hello"` | **C**hange **S**urround `'` to `"` | Switching from single to double quotes to match project style |
| `cs"'` | `"hello"` | `'hello'` | **C**hange **S**urround `"` to `'` | Switching to single quotes for a JS string |
| `cs)]` | `(hello)` | `[hello]` | **C**hange **S**urround `)` to `]` | Switching from function args to array brackets |
| `cs)}` | `(hello)` | `{hello}` | **C**hange **S**urround `)` to `}` | Changing parens to braces for a JSX expression |
| `cs)>` | `(hello)` | `<hello>` | **C**hange **S**urround `)` to `>` | Wrapping in angle brackets |
| `csth1` | `<b>hello</b>` | `<h1>hello</h1>` | **C**hange **S**urround **T**ag to `h1` | Changing an HTML tag type (e.g., `<b>` to `<h1>`) |
| `cs"f` | `"hello"` | `func("hello")` | **C**hange **S**urround `"` to **F**unction | Wrapping a quoted string in a function call |

#### Visual Mode Surround (`S`)

| Keys | Description | Use Case |
|------|-------------|----------|
| `v` + select + `S"` | Surround visual selection with `"` | You selected a multi-word expression and want to wrap it in quotes |
| `v` + select + `S)` | Surround visual selection with `()` | You selected an expression and want to wrap it in parentheses |
| `v` + select + `S<tag>` | Surround visual selection with HTML tag | You selected text and want to wrap it in `<div>...</div>` |
| `V` + select + `S{` | Surround selected lines with `{ }` | You selected a block of code and want to wrap it in braces (e.g., adding an `if` body) |

### Git

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>gs` | Open Git status (Fugitive) | **G**it **S**tatus | You want to see what files are staged/unstaged before committing |

### Trouble (Diagnostics UI)

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>xw` | Workspace diagnostics | e**X**amine **W**orkspace | You want to see all errors across the entire project, not just the current file |
| `<leader>xd` | Document diagnostics | e**X**amine **D**ocument | You want a persistent list of all errors in just the current file |
| `<leader>xq` | Toggle quickfix list | e**X**amine **Q**uickfix | You ran a project-wide search-replace and want to review all locations |
| `<leader>xl` | Toggle location list | e**X**amine **L**ocation list | You want to navigate through a list of locations from a specific tool |
| `<leader>xt` | Toggle TODO list | e**X**amine **T**odos | You want to see all TODO comments in a nice filterable panel |

### Sessions

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>ws` | Save current session | **W**orkspace **S**ave | You're done for the day and want to save all open files, splits, and tabs |
| `<leader>wr` | Restore last session | **W**orkspace **R**estore | You open Neovim in a project and want to pick up exactly where you left off |

### Undo

| Keys | Description | Mnemonic | Use Case |
|------|-------------|----------|----------|
| `<leader>u` | Toggle undo tree | **U**ndo tree | You hit undo too many times, went past the right point, and want to visually pick the exact state to restore |

### Tmux Navigation

| Keys | Description | Mnemonic |
|------|-------------|----------|
| `Ctrl+h` | Move to left pane (Neovim or tmux) | **h** = left (Vim convention) |
| `Ctrl+j` | Move to pane below | **j** = down |
| `Ctrl+k` | Move to pane above | **k** = up |
| `Ctrl+l` | Move to right pane | **l** = right |

---

## Mnemonic Cheat Sheet

The keybindings follow a consistent **`<leader>` + prefix + action** pattern. Memorize the prefixes and the actions become intuitive:

| Prefix | Domain | Think of it as... |
|--------|--------|-------------------|
| `s` | **S**plits | "I want to **S**plit my screen" |
| `t` | **T**abs | "I want to manage **T**abs" |
| `e` | **E**xplorer | "I want the file **E**xplorer" |
| `f` | **F**ind | "I want to **F**ind something" |
| `w` | **W**orkspace | "I want to manage my **W**orkspace session" |
| `x` | e**X**amine | "I want to e**X**amine diagnostics/issues" |
| `g` | **G**it / **G**o | "**G**it stuff or **G**o to definition" |
| `c` | **C**ode | "I want a **C**ode action" |
| `r` | **R**ename / **R**estart | "I want to **R**ename or **R**estart" |
| `d` / `D` | **D**iagnostics | "Show me **D**iagnostics" |
| `m` | **M**ake | "**M**ake it pretty (format)" |

**Surround operators (no leader key):**

| Operator | Meaning | Remember as... |
|----------|---------|----------------|
| `ys` | Add surround | "**Y**ou **S**urround" — you're adding something around text |
| `ds` | Delete surround | "**D**elete **S**urround" — you're removing the wrapper |
| `cs` | Change surround | "**C**hange **S**urround" — you're swapping one wrapper for another |
| `S` (visual) | Surround selection | Capital **S** = **S**urround what I selected |

> **Bracket rule:** Closing `)` `]` `}` = tight, opening `(` `[` `{` = with spaces. Think: "closing is closer (tight), opening makes room (spaced)."

**Common second letters:**

| Letter | Meaning | Examples |
|--------|---------|---------|
| `v` | Vertical | `sv` = split vertical |
| `h` | Horizontal | `sh` = split horizontal |
| `o` | Open | `to` = tab open |
| `x` | Close/exit | `sx` = split exit, `tx` = tab exit |
| `n` | Next | `tn` = tab next |
| `p` | Previous | `tp` = tab previous |
| `f` | Find/file | `ff` = find files, `ef` = explorer find, `tf` = tab file |
| `r` | Recent/refresh/restore | `fr` = find recent, `er` = explorer refresh, `wr` = workspace restore |
| `s` | String/save/status | `fs` = find string, `ws` = workspace save, `gs` = git status |
| `c` | Cursor/collapse | `fc` = find cursor word, `ec` = explorer collapse |
| `e` | Enable/toggle | `ee` = explorer enable |

---

## Common Workflows

### Workflow 1: "I just opened a project and need to find my way around"

1. `<leader>ee` - Open the file explorer to see the project structure
2. `<leader>ff` - Fuzzy find a file by name if you know what you're looking for
3. `<leader>fs` - Search for a specific string across all files
4. `<leader>wr` - Restore your previous session if you worked on this project before

### Workflow 2: "I'm reading unfamiliar code and need to understand it"

1. `gd` - Jump to a function's definition to see what it does
2. `K` - Hover over a symbol to read its documentation and signature
3. `gR` - See everywhere this function is called to understand its usage patterns
4. `gi` - Check what classes implement an interface
5. `gt` - Look up what type a variable is
6. `<leader>u` - Use undo tree if you accidentally changed something while exploring

### Workflow 3: "I'm writing new code"

1. `<leader>sv` - Split vertically to have a reference file open beside your new code
2. Start typing and use `Ctrl+Space` to trigger completion if it doesn't appear
3. `Ctrl+j`/`Ctrl+k` - Navigate completion suggestions
4. `Enter` - Accept the right suggestion
5. `Ctrl+f`/`Ctrl+b` - Scroll through documentation in the completion popup
6. `<leader>mp` - Format your code when you're done writing

### Workflow 4: "I need to fix bugs and errors"

1. `<leader>xw` - Open workspace diagnostics to see all errors across the project
2. `]d` - Jump to the next diagnostic in the current file
3. `<leader>d` - Read the full error message on the current line
4. `<leader>ca` - Open code actions to see if there's an auto-fix available
5. `gd` - Go to the definition of the problematic function
6. `<leader>rn` - Rename a symbol if the fix involves renaming
7. `<leader>mp` - Format after fixing

### Workflow 5: "I'm committing my changes"

1. `<leader>gs` - Open Git status to see changed files
2. In the Fugitive window: `s` to stage, `u` to unstage, `cc` to commit
3. `<leader>ft` - Check for any remaining TODOs before committing
4. `<leader>xw` - Make sure there are no errors left in the workspace

### Workflow 6: "I want to compare or work on two things at once"

1. `<leader>sv` - Split vertically for side-by-side files
2. `<leader>sh` - Split horizontally for top/bottom layout
3. `Ctrl+h/j/k/l` - Move between splits (works across tmux panes too)
4. `<leader>se` - Equalize split sizes if they get uneven
5. `<leader>tf` - Pop the current file into its own tab for focused work
6. `<leader>tn`/`<leader>tp` - Switch between tabs
7. `<leader>sx` - Close a split when done comparing

### Workflow 7: "I made a mess and need to undo carefully"

1. `<leader>u` - Open the undo tree to visualize your entire edit history
2. Navigate the tree to find the exact state you want
3. Press `Enter` on the desired state to restore it
4. `<leader>u` - Close the undo tree when done

### Workflow 8: "I need to refactor surroundings (quotes, brackets, tags)"

1. `cs'"` - Change single quotes to double quotes across your code
2. `dst` - Strip an unnecessary HTML wrapper tag but keep its content
3. `ysiw)` - Wrap a variable name in parentheses to pass it as a function argument
4. `dsf` - Remove a function wrapper like `String(value)` to just `value`
5. Visually select a block with `V`, then `S{` to wrap it in braces for a new `if` block
6. `csth1` - Change a `<div>` to an `<h1>` tag
7. `ysiw"` - Wrap a bare word in quotes to turn it into a string literal

### Workflow 9: "End of day wrap-up"

1. `<leader>ft` - Review remaining TODOs
2. `<leader>xw` - Check that no diagnostics are left unresolved
3. `<leader>ws` - Save your session so you can restore it tomorrow
4. `<leader>gs` - Final check on Git status
