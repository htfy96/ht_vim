syntax clear
syntax case ignore
syntax keyword StateDefType statedef,info,files,arcade
syntax keyword StateType state
syntax match IdfType /type\|physics\|movetype\|ctrl\|anim\|velset\|value\|trigger\d*\|id\|bindtime\|velocity\|shadow\|postype\|pos\|flag\|hitpausetime\|ignorehitpause\|removetime\|sprpriority\|scale\|ownpal\|pausemovetime\|supermovetime\|volumn\|channel\|name\|displayname\|mugenversion\|versiondate\|author\|pal\.default\|sprite\|anim\|sound\|cmd\|cns\|stcommon\|st\|triggerall\|var\|name\|stateno\|facing\|keyctrl\|command\|time/
syntax match CommentType /;.*/
syntax match StateName /[\[\]]/
syntax match NumberType /\d/

highlight link CommentType Comment
highlight link StateDefType PreProc 
highlight link StateType Statement
highlight link StateName String 
highlight link NumberType Number
highlight link IdfType Identifier

