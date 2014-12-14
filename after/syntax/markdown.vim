
" multi-markdown
"
" Syntax Guide:
" https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
"
" Tables
syn region  mmdTable start="^\%(\[.*\]\n\)\{}.*|.*\n[-|\:\. ]\+$" end="\%(\n\[.*\]\n\)\{}\ze\n[^|]\+\n$" keepend contains=mmdTableHeader,mmdTableHeadDelimiter,mmdTableDelimiter,mmdTableCaption
syn match   mmdTableDelimiter "|" contained
syn match   mmdTableAlign "[\.:]" contained
syn region  mmdTableHeader start="^\zs.*\ze\n[-|\:\. ]\+$" end="$" nextgroup=mmdTableHeadDelimiter contained contains=mmdTableDelimiter
syn match   mmdTableHeadDelimiter "^[-|\:\.\ ]\+$" contained contains=mmdTableDelimiter,mmdTableAlign
syn region mmdTableCaption matchgroup=mmdTableCaptionDelimiter start="^\[" end="\]$" keepend contained

hi! link mmdTableHeader           Constant
hi! link mmdTableDelimiter        Delimiter
hi! link mmdTableAlign            Identifier
hi! link mmdTableHeadDelimiter    Delimiter
hi! link mmdTableCaptionDelimiter Delimiter
hi! link mmdTableCaption          Comment

" footnotes
syn region mmdFootnoteMarker matchgroup=mmdFootnoteDelimiter start="\[^" end="\]" keepend
hi! link mmdFootnoteDelimiter  Delimiter
hi! link mmdFootnoteMarker     Constant

" CriticMarkup
" reference: http://criticmarkup.com
syn region mdCriticAddition matchgroup=mdCriticAdd start=/{++/ end=/++}/ contains=mdCriticAddStartMark, mdCriticAddEndMark concealends
syn match  mdCriticAddStartMark /{++/ contained conceal
syn match  mdCriticAddEndMark /++}/ contained conceal
syn region mdCriticDeletion matchgroup=mdCriticDel start=/{--/ end=/--}/ contains=mdCriticDelStartMark,mdCriticDelEndMark concealends
syn match  mdCriticDelStartMark /{--/ contained conceal
syn match  mdCriticDelEndMark /--}/ contained conceal
syn region mdCriticSubRemove start=/{\~\~/ end=/.\(\~>\)\@=/ keepend
syn match  mdCriticSubStartMark /{\~\~/ contained containedin=mdCriticSubRemove conceal
syn region mdCriticSubstitute start=/\~>/ end=/\~\~}/ keepend
syn match  mdCriticSubTransMark /\~>/ contained containedin=mdCriticSubstitute conceal
syn match  mdCriticSubEndMark /\~\~}/ contained containedin=mdCriticSubstitute conceal
syn region mdCriticComment matchgroup=mdCriticExtra start=/{>>/ end=/<<}/ concealends
syn region mdCriticHighlight matchgroup=mdCriticExtra start=/{==/ end=/==}/ concealends

hi! link mdCriticAdd              DiffText
hi! link mdCriticAddition         DiffAdd
hi! link mdCriticDel              DiffText
hi! link mdCriticDeletion         DiffDelete
hi! link mdCriticSubRemove        DiffDelete
hi! link mdCriticSubstitute       DiffAdd
hi! link mdCriticSubStartMark     DiffText
hi! link mdCriticSubTransMark     DiffText
hi! link mdCriticSubEndMark       DiffText
hi! link mdCriticComment          Comment
hi! link mdCriticHighlight        Todo
hi! link mdCriticExtra            DiffText


