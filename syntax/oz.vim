" Vim syntax file
" Language:    Oz/Mozart (www.mozart-oz.org)
" Maintainer:  Michael Neumann <mneumann@fantasy-coders.de>
" Contributer: Stijn Seghers <stijnseghers at gmail.com>
" Last Change: 2014 Apr 17

if exists("b:current_syntax")
  finish
endif

syn region ozComment start="%" end="$" contains=ozTodo
syn region ozComment start="/\*" end="\*/" contains=ozTodo
syn keyword ozTodo contained TODO FIXME XXX

syn keyword ozKeyword at attr
syn keyword ozKeyword case catch choice class cond
syn keyword ozKeyword declare define dis do
syn keyword ozKeyword else elsecase elseif end export
syn keyword ozKeyword fail feat finally for from fun functor
syn keyword ozKeyword if import in
syn keyword ozKeyword local lock
syn keyword ozKeyword meth mod
syn keyword ozKeyword of
syn keyword ozKeyword prepare proc prop
syn keyword ozKeyword raise require
syn keyword ozKeyword self skip
syn keyword ozKeyword then thread try
syn keyword ozKeyword unit

syn keyword ozBoolean true false

"syn keyword ozOperator andthen div not or orelse
syn keyword ozKeyword andthen div not or orelse

syn keyword ozQualifier lazy

syn match ozOperator "|"
syn match ozOperator "#"
syn match ozOperator ":"
syn match ozOperator "\.\.\."
syn match ozOperator "="
syn match ozOperator "\."
syn match ozOperator "\^"
syn match ozOperator "\[\]"
syn match ozOperator "\$"
syn match ozOperator "!"
syn match ozOperator "_"
syn match ozOperator "\~"
syn match ozOperator "+"
syn match ozOperator "-"
syn match ozOperator "\*"
syn match ozOperator "/[^\*]"    " if followed by a * it is a comment
syn match ozOperator "@"
syn match ozOperator "<-"
syn match ozOperator ","
syn match ozOperator "!!"
syn match ozOperator "\(<=\|==\|\\=\|<\|=<\|>\|>=\)"
syn match ozOperator "\(=:\|\\=:\|<:\|=<:\|>:\|>=:\|::\|:::\)"

syn match ozVariable "[A-Z][A-Za-z0-9_]*"
syn match ozVariable "`[^`]*`"

syn match ozAtom "[a-z][A-Za-z0-9_]*"

syn region ozString start=+L\="+ skip=+\\\\\|\\"+ end=+"+
syn region ozString start=+L\='+ skip=+\\\\\|\\'+ end=+'+

syn match ozNumber "[0-9][0-9]*\(\.[0-9][0-9]*\)\?"

syn sync fromstart


hi link ozKeyword Keyword
hi link ozOperator Operator
hi link ozBoolean Boolean
hi link ozVariable Identifier
hi link ozAtom Type
hi link ozString String
hi link ozNumber Number
hi link ozTodo Todo
hi link ozComment Comment
hi link ozQualifier Type

let b:current_syntax = "oz"
