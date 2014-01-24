
" multi-markdown
"
" Syntax Guide:
" https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
"
" Tables
syn region  mmdTable
  \ start="^\%(\[.*\]\n\)\{}.*|.*\n[-|\:\. ]\+$"
  \ end="\%(\n\[.*\]\n\)\{}\ze\n[^|]\+\n$"
  \ keepend
  \ contains=mmdTableHeader,mmdTableHeadDelimiter,mmdTableDelimiter,mmdTableCaption
syn match   mmdTableDelimiter "|" contained
syn match   mmdTableAlign "[\.:]" contained
syn region  mmdTableHeader 
  \ start="^\zs.*\ze\n[-|\:\. ]\+$" 
  \ end="$" 
  \ nextgroup=mmdTableHeadDelimiter 
  \ contained 
  \ contains=mmdTableDelimiter
syn match   mmdTableHeadDelimiter "^[-|\:\.\ ]\+$" contained 
  \ contains=mmdTableDelimiter,mmdTableAlign
syn region mmdTableCaption
  \ matchgroup=mmdTableCaptionDelimiter
  \ start="^\["
  \ end="\]$"
  \ keepend
  \ contained

hi! link mmdTableHeader           Constant
hi! link mmdTableDelimiter        Delimiter
hi! link mmdTableAlign            Identifier
hi! link mmdTableHeadDelimiter    Delimiter
hi! link mmdTableCaptionDelimiter Delimiter
hi! link mmdTableCaption          Comment

" footnotes
syn region mmdFootnoteMarker   
      \ matchgroup=mmdFootnoteDelimiter start="\[^" end="\]" keepend
hi! link mmdFootnoteDelimiter  Delimiter
hi! link mmdFootnoteMarker     Constant
