set background=light
highlight clear
syntax reset

let g:colors_name="intellij"
let colors_name="intellij"

" Colors {{{
let s:debug        = { "gui": "#B027AF", "cterm": "123" }
let s:black        = { "gui": "#383a42", "cterm": "237" }
let s:gray         = { "gui": "#E6E6E6", "cterm": "237" }
let s:red          = { "gui": "#e45649", "cterm": "167" }
let s:green        = { "gui": "#50a14f", "cterm": "71" }
let s:light_yellow = { "gui": "#fffbe6", "cterm": "136" }
let s:yellow       = { "gui": "#c18401", "cterm": "136" }
let s:blue         = { "gui": "#0033b3", "cterm": "25" }
let s:lightblue    = { "gui": "#2469d2", "cterm": "26" }
let s:purple       = { "gui": "#a626a4", "cterm": "127" }
let s:cyan         = { "gui": "#007074", "cterm": "6" }
let s:white        = { "gui": "#fafafa", "cterm": "231" }
let s:brown        = { "gui": "#855800", "cterm": "136" }
let s:dark         = { "gui": "#000000", "cterm": "0" }
let s:bluish       = { "gui": "#ccccff", "cterm": "18" }
let s:light_bluish = { "gui": "#f6f8fd", "cterm": "255" }

let s:fg           = s:black
let s:bg           = s:white

let s:comment_fg   = { "gui": "#8c8c8c", "cterm": "245" }
let s:string       = { "gui": "#067d17", "cterm": "28" }
let s:number       = { "gui": "#1750eb", "cterm": "26" }
let s:gutter_bg    = { "gui": "#fafafa", "cterm": "231" }
let s:gutter_fg    = { "gui": "#d4d4d4", "cterm": "252" }

let s:cursor_line  = { "gui": "#f2f2f2", "cterm": "255" }
let s:color_col    = { "gui": "#f2f2f2", "cterm": "255" }

let s:selection    = { "gui": "#bfceff", "cterm": "153" }
let s:vertsplit    = { "gui": "#f0f0f0", "cterm": "255" }
" }}}

" Function {{{
function! s:h(group, fg, bg, attr)
    if type(a:fg) == type({})
        exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
    else
        exec "hi " . a:group . " guifg=NONE cterm=NONE"
    endif
    if type(a:bg) == type({})
        exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
    else
        exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    else
        exec "hi " . a:group . " gui=NONE cterm=NONE"
    endif
endfun
"}}}

" User interface colors {{{
call s:h("Normal", s:fg, s:bg, "")
call s:h("NonText", s:gray, "", "")

call s:h("Cursor", s:bg, s:blue, "")
call s:h("CursorColumn", "", s:cursor_line, "")
call s:h("CursorLine", "", s:light_bluish, "")

call s:h("LineNr", s:gutter_fg, s:gutter_bg, "")
call s:h("CursorLineNr", s:fg, "", "")

call s:h("DiffAdd", s:green, "", "")
call s:h("DiffChange", s:yellow, "", "")
call s:h("DiffDelete", s:red, "", "")
call s:h("DiffText", s:blue, "", "")

call s:h("IncSearch", s:fg, s:bluish, "")
call s:h("Search", s:fg, s:bluish, "")
call s:h("CurSearch", s:fg, s:bluish, "")

call s:h("ErrorMsg", s:fg, "", "")
call s:h("ModeMsg", s:fg, "", "")
call s:h("MoreMsg", s:fg, "", "")
call s:h("WarningMsg", s:red, "", "")
call s:h("Question", s:purple, "", "")

call s:h("Pmenu", s:fg, s:cursor_line, "")
call s:h("PmenuSel", s:bg, s:blue, "")
call s:h("PmenuSbar", "", s:cursor_line, "")
call s:h("PmenuThumb", "", s:comment_fg, "")

call s:h("SpellBad", s:red, "", "")
call s:h("SpellCap", s:yellow, "", "")
call s:h("SpellLocal", s:yellow, "", "")
call s:h("SpellRare", s:yellow, "", "")

call s:h("StatusLine", s:cursor_line, s:fg, "")
call s:h("StatusLineNC", s:fg, s:cursor_line, "")

call s:h("TabLine", s:comment_fg, s:cursor_line, "")
call s:h("TabLineFill", s:comment_fg, s:cursor_line, "")
call s:h("TabLineSel", s:bg, s:fg, "")

call s:h("Visual", "", s:selection, "")
call s:h("VisualNOS", "", s:selection, "")

call s:h("ColorColumn", "", s:color_col, "")
call s:h("Conceal", s:fg, "", "")
call s:h("Directory", s:black, "", "")
call s:h("VertSplit", s:fg, s:bg, "")
call s:h("Folded", s:fg, s:cursor_line, "")
call s:h("FoldColumn", s:fg, s:cursor_line, "")
call s:h("SignColumn", s:fg, "", "")

call s:h("MatchParen", "", { "gui": "#93d9d9", "cterm": "116" }, "")
call s:h("SpecialKey", s:fg, "", "")
call s:h("Title", s:green, "", "")
call s:h("WildMenu", s:fg, "", "")
" }}}

" Syntax colors {{{
call s:h("Comment", s:comment_fg, "", "italic")
call s:h("Constant", s:debug, "", "")
call s:h("String", s:string, "", "")
call s:h("Character", s:string, "", "")
call s:h("Number", s:number, "", "")
call s:h("Boolean", s:blue, "", "")
call s:h("Float", s:number, "", "")

call s:h("Identifier", s:cyan, "", "")
call s:h("Function", s:cyan, "", "")
call s:h("Statement", s:blue, "", "")

call s:h("Conditional", s:blue, "", "")
call s:h("Repeat", s:blue, "", "")
call s:h("Label", s:blue, "", "")
call s:h("Operator", s:fg, "", "")
call s:h("Keyword", s:blue, "", "")
call s:h("Exception", s:purple, "", "")

call s:h("PreProc", s:yellow, "", "")
call s:h("Include", s:purple, "", "")
call s:h("Define", s:purple, "", "")
call s:h("Macro", s:purple, "", "")
call s:h("PreCondit", s:yellow, "", "")

call s:h("Type", s:blue, "", "")
call s:h("StorageClass", s:yellow, "", "")
call s:h("Structure", s:yellow, "", "")
call s:h("Typedef", s:yellow, "", "")

call s:h("Special", s:blue, "", "")
call s:h("SpecialChar", s:fg, "", "")
call s:h("Tag", s:fg, "", "")
call s:h("Delimiter", s:fg, "", "")
call s:h("SpecialComment", s:comment_fg, "", "italic")
call s:h("Debug", s:fg, "", "")
call s:h("Underlined", s:yellow, "", "underline")
call s:h("Ignore", s:fg, "", "")
call s:h("Error", s:red, s:gutter_bg, "")
call s:h("Todo", s:blue, "", "italic")
" }}}

" {{{ Golang
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 0
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 0

call s:h("goPackage", s:blue, "", "")
call s:h("goImport", s:blue, "", "")
call s:h("goVar", s:blue, "", "")
call s:h("goConst", s:blue, "", "")

call s:h("goFunction", s:cyan, "", "")
call s:h("goFunctionCall", s:cyan, "", "")
call s:h("goReceiverType", s:lightblue, "", "")
call s:h("goReceiverVar", s:cyan, "", "")

call s:h("goStatement", s:blue, "", "")
call s:h("goConditional", s:blue, "", "")
call s:h("goLabel", s:blue, "", "")
call s:h("goRepeat", s:blue, "", "")

call s:h("goType", s:blue, "", "")
call s:h("goSignedInts", s:blue, "", "")
call s:h("goUnsignedInts", s:blue, "", "")
call s:h("goFloats", s:blue, "", "")
call s:h("goComplexes", s:blue, "", "")

call s:h("goBuiltins", s:cyan, "", "")
call s:h("goBoolean", s:blue, "", "")
call s:h("goPredefinedIdentifiers", s:blue, "", "")

call s:h("goDeclType", s:blue, "", "")
call s:h("goDeclaration", s:blue, "", "")
call s:h("goParamType", s:blue, "", "")
" }}}

" {{{ Java
" IntelliJ Light. java.vim colors keywords, literals and comments, and jdtls
" semantic tokens color names over it: an @lsp.type group sets a color, the
" documentation modifier grays names inside Javadoc back out, and the typemod
" groups add the declaration color and the static italic.
let s:field  = { "gui": "#871094", "cterm": "90" }
let s:decl   = { "gui": "#00627a", "cterm": "24" }
let s:tparam = { "gui": "#007e8a", "cterm": "30" }
let s:meta   = { "gui": "#9e880d", "cterm": "136" }
let s:escape = { "gui": "#0037a6", "cterm": "25" }
let s:docval = { "gui": "#3d3d3d", "cterm": "237" }

" One color for every keyword; java.vim spreads them over seven groups.
for s:g in ["javaExternal", "javaConstant", "javaTypedef", "javaOperator",
      \ "javaStorageClass", "javaExceptions", "javaAssert", "javaMethodDecl",
      \ "javaClassDecl", "javaScopeDecl", "javaConceptKind"]
    call s:h(s:g, s:blue, "", "")
endfor
call s:h("javaAnnotation", s:meta, "", "")
call s:h("javaSpecialChar", s:escape, "", "")
call s:h("javaVarArg", s:fg, "", "")

" Type and package names stay plain, and so do method calls.
for s:t in ["class", "interface", "enum", "record", "type", "namespace",
      \ "method", "parameter", "variable", "annotationMember"]
    call s:h("@lsp.type." . s:t . ".java", s:fg, "", "")
endfor
call s:h("@lsp.type.modifier.java", s:blue, "", "")
call s:h("@lsp.type.keyword.java", s:blue, "", "")
call s:h("@lsp.type.decorator.java", s:meta, "", "")
call s:h("@lsp.type.typeParameter.java", s:tparam, "", "")
call s:h("@lsp.type.property.java", s:field, "", "")
call s:h("@lsp.type.recordComponent.java", s:field, "", "")
call s:h("@lsp.type.enumMember.java", s:field, "", "italic")
call s:h("@lsp.typemod.method.declaration.java", s:decl, "", "")
call s:h("@lsp.typemod.method.static.java", "", "", "italic")
call s:h("@lsp.typemod.property.static.java", "", "", "italic")

call s:h("@lsp.mod.documentation.java", s:comment_fg, "", "italic")
call s:h("@lsp.typemod.keyword.documentation.java", s:comment_fg, "", "italic,underline")
call s:h("@lsp.typemod.parameter.documentation.java", s:docval, "", "italic")
call s:h("@lsp.typemod.typeParameter.documentation.java", s:docval, "", "italic")
" }}}

" {{{ LSP
" IntelliJ Light's inspection colors: errors get a red wave, warnings a yellow
" background, weak warnings a gray wave, unused code plain gray.
hi DiagnosticUnderlineError gui=undercurl cterm=undercurl guisp=#ff0000
hi DiagnosticUnderlineInfo gui=undercurl cterm=undercurl guisp=#cccccc
hi DiagnosticUnderlineHint gui=undercurl cterm=undercurl guisp=#cccccc
call s:h("DiagnosticUnderlineWarn", "", { "gui": "#fcf4d4", "cterm": "230" }, "")
call s:h("DiagnosticUnnecessary", { "gui": "#808080", "cterm": "244" }, "", "")
call s:h("LspInlayHint", { "gui": "#7a7a7a", "cterm": "243" },
      \ { "gui": "#ededed", "cterm": "255" }, "")
" }}}

" {{{ Typescript
call s:h("typescriptBraces", s:black, "", "")
call s:h("typescriptBlock", s:black, "", "")
" }}}

" Plugins {{{
" GitGutter
call s:h("GitGutterAdd", s:green, s:gutter_bg, "")
call s:h("GitGutterDelete", s:red, s:gutter_bg, "")
call s:h("GitGutterChange", s:yellow, s:gutter_bg, "")
call s:h("GitGutterChangeDelete", s:red, s:gutter_bg, "")
" Fugitive
call s:h("diffAdded", s:green, "", "")
call s:h("diffRemoved", s:red, "", "")
" }}}

" Git {{{
call s:h("gitcommitComment", s:comment_fg, "", "")
call s:h("gitcommitUnmerged", s:red, "", "")
call s:h("gitcommitOnBranch", s:fg, "", "")
call s:h("gitcommitBranch", s:purple, "", "")
call s:h("gitcommitDiscardedType", s:red, "", "")
call s:h("gitcommitSelectedType", s:green, "", "")
call s:h("gitcommitHeader", s:fg, "", "")
call s:h("gitcommitUntrackedFile", s:cyan, "", "")
call s:h("gitcommitDiscardedFile", s:red, "", "")
call s:h("gitcommitSelectedFile", s:green, "", "")
call s:h("gitcommitUnmergedFile", s:yellow, "", "")
call s:h("gitcommitFile", s:fg, "", "")
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" }}}

" Fix colors in neovim terminal buffers {{{
  if has('nvim')
    let g:terminal_color_0 = s:black.gui
    let g:terminal_color_1 = s:red.gui
    let g:terminal_color_2 = s:green.gui
    let g:terminal_color_3 = s:yellow.gui
    let g:terminal_color_4 = s:blue.gui
    let g:terminal_color_5 = s:purple.gui
    let g:terminal_color_6 = s:cyan.gui
    let g:terminal_color_7 = s:white.gui
    let g:terminal_color_8 = s:black.gui
    let g:terminal_color_9 = s:red.gui
    let g:terminal_color_10 = s:green.gui
    let g:terminal_color_11 = s:yellow.gui
    let g:terminal_color_12 = s:blue.gui
    let g:terminal_color_13 = s:purple.gui
    let g:terminal_color_14 = s:cyan.gui
    let g:terminal_color_15 = s:white.gui
    let g:terminal_color_background = s:bg.gui
    let g:terminal_color_foreground = s:fg.gui
  endif
" }}}

