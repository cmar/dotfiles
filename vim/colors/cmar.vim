" help highlight-ctermfg
hi clear
set background=dark
let g:colors_name="cmar"

" let black = 0
" let red = 1
" let green = 2
" let yellow = 3
" let blue = 4
" let magenta = 5
" let cyan = 6 purple
" let white = 7
" let bright_black = 8 line number bg
" let bright_red = 9 orange
" let bright_green = 10
" let bright_yellow = 11
" let bright_blue = 12 Delimiter
" let bright_magenta = 13
" let bright_cyan = 14
" let bright_white = 15 line number fg

hi Normal ctermfg=7 ctermbg=0
hi Search ctermfg=7 ctermbg=9

hi TabLine    ctermfg=7 ctermbg=8 cterm=none
hi TabLineSel   ctermfg=2 ctermbg=8 cterm=none
hi TabLineFill  ctermfg=235 ctermbg=8

hi LineNr    ctermfg=15 ctermbg=8
hi VertSplit ctermfg=15 ctermbg=8 cterm=none

hi StatusLineNC   ctermfg=15 ctermbg=8 cterm=none
hi StatusLine     ctermfg=7 ctermbg=8 cterm=none

hi CursorLineNr    term=bold ctermfg=10 ctermbg=11
hi CursorColumn    term=reverse ctermbg=11
hi CursorLine      ctermbg=11 cterm=none

" " hi Cursor
" hi CursorLine   ctermbg=236   cterm=none
" hi CursorLineNr ctermfg=208   cterm=none

hi Comment         ctermfg=8

hi Constant        ctermfg=6
hi String          ctermfg=3
hi Character       ctermfg=3
" hi Number          ctermfg=6
" hi Boolean         ctermfg=6
" hi Float           ctermfg=6

hi Identifier      ctermfg=9
hi Function        ctermfg=2

hi Statement       ctermfg=1
" hi Conditional     ctermfg=1
" hi Repeat          ctermfg=6
" hi Label
" hi Operator        ctermfg=1
" hi Keyword         ctermfg=6
" hi Exception       ctermfg=2

hi DiffDelete      ctermfg=5 ctermbg=233

hi Define          ctermfg=4
hi Directory       ctermfg=2
hi Error           ctermfg=5 ctermbg=233

hi PreProc         ctermfg=2
" hi Include
" hi Define
" hi Macro
hi PreCondit       ctermfg=2

hi Type            ctermfg=4               cterm=none
" hi StorageClass
" hi Structure
hi Typedef         ctermfg=4

hi Special         ctermfg=3
" hi SpecialChar
hi Tag             ctermfg=1
hi Delimiter ctermfg=12
" SpecialComment
" Debug

" hi Error

hi Title           ctermfg=203

hi Visual     ctermbg=238

hi NonText         ctermfg=239
hi SpecialKey      ctermfg=239

hi Underlined      ctermfg=12

hi rubyAttribute ctermfg=1
hi rubyConstant  ctermfg=4
hi rubySymbol    ctermfg=2
" rubyExceptional xxx links to rubyConditional
" rubyMethodExceptional xxx links to rubyDefine
" rubyTodo       xxx links to Todo
" rubyStringEscape xxx links to Special
" rubyQuoteEscape xxx links to rubyStringEscape
" rubyInterpolationDelimiter xxx cleared
" rubyInterpolation xxx cleared
" rubyInstanceVariable xxx links to rubyIdentifier
" rubyClassVariable xxx links to rubyIdentifier
" rubyGlobalVariable xxx links to rubyIdentifier
" rubyPredefinedVariable xxx links to rubyPredefinedIdentifier
" rubyInvalidVariable xxx links to Error
" rubyNoInterpolation xxx links to rubyString
" NONE           xxx cleared
" rubyDelimEscape xxx cleared
" rubyString     xxx links to String
" rubyNestedParentheses xxx cleared
" rubyNestedCurlyBraces xxx cleared
" rubyNestedAngleBrackets xxx cleared
" rubyNestedSquareBrackets xxx cleared
" rubyRegexpSpecial xxx links to Special
" rubyRegexpComment xxx links to Comment
" rubyRegexpParens xxx cleared
" rubyRegexpCharClass xxx links to rubyRegexpSpecial
" rubyRegexpEscape xxx links to rubyRegexpSpecial
" rubyRegexpBrackets xxx cleared
" rubyRegexpQuantifier xxx links to rubyRegexpSpecial
" rubyRegexpAnchor xxx links to rubyRegexpSpecial
" rubyRegexpDot  xxx links to rubyRegexpCharClass
" rubyASCIICode  xxx links to Character
" rubyInteger    xxx links to Number
" rubyFloat      xxx links to Float
" rubyLocalVariableOrMethod xxx cleared
" rubyBlockArgument xxx cleared
" rubyConstant   xxx cleared
" rubySymbol     xxx cleared
" rubyBlockParameter xxx links to rubyIdentifier
" rubyBlockParameterList xxx cleared
" rubyPredefinedConstant xxx links to rubyPredefinedIdentifier
" rubyRegexpDelimiter xxx links to rubyStringDelimiter
" rubyRegexp     xxx cleared
" rubyStringDelimiter xxx cleared
" rubySymbolDelimiter xxx links to rubyStringDelimiter
" rubyHeredocStart xxx cleared
" rubyHeredoc    xxx links to rubyString                                                                                                                                                                     [0/0]
" rubyAliasDeclaration2 xxx cleared
" rubyAliasDeclaration xxx cleared
" rubyBoolean    xxx links to Boolean
" rubyPseudoVariable xxx links to Constant
" rubyMethodDeclaration xxx cleared
" rubyOperator   xxx links to Operator
" rubyClassDeclaration xxx cleared
" rubyModuleDeclaration xxx cleared
" rubyFunction   xxx links to Function
" rubyControl    xxx links to Statement
" rubyKeyword    xxx links to Keyword
" rubyBeginEnd   xxx links to Statement
" rubyDefine     xxx links to Define
" rubyClass      xxx links to rubyDefine
" rubyModule     xxx links to rubyDefine
" rubyMethodBlock xxx cleared
" rubyBlock      xxx cleared
" rubyConditionalModifier xxx links to rubyConditional
" rubyRepeatModifier xxx links to rubyRepeat
" rubyDoBlock    xxx cleared
" rubyCurlyBlockDelimiter xxx cleared
" rubyCurlyBlock xxx cleared
" rubyArrayDelimiter xxx cleared
" rubyArrayLiteral xxx cleared
" rubyBlockExpression xxx cleared
" rubyCaseExpression xxx cleared
" rubyConditionalExpression xxx cleared
" rubyRepeat     xxx links to Repeat
" rubyOptionalDo xxx links to rubyRepeat
" rubyOptionalDoLine xxx cleared
" rubyRepeatExpression xxx cleared
" rubyAccess     xxx links to Statement
" rubyAttribute  xxx cleared
" rubyEval       xxx links to Statement
" rubyException  xxx links to Exception
" rubyInclude    xxx links to Include
" rubySharpBang  xxx links to PreProc
" rubySpaceError xxx links to rubyError
" rubyComment    xxx links to Comment
" rubyMultilineComment xxx cleared
" rubyDocumentation xxx links to Comment
" rubyKeywordAsMethod xxx cleared
" rubyDataDirective xxx links to Delimiter
" rubyData       xxx links to Comment
" rubyIdentifier xxx links to Identifier
" rubyPredefinedIdentifier xxx links to rubyIdentifier
" rubyError      xxx links to Error
