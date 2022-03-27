Object subclass: #Example 
instanceVariableNames: 'num left right'
classVariableNames: ''
poolDictionaries:''
category: nil !

!Example methodsFor: 'a'!

initialize: part 
    num := part
!

numIs
    ^num
!
setter: bob
    left := bob    
!
setLeft: num
    left := Example new.
    left initialize: num.
    ^left
    
!
getLeft
    ^left
!!

Object subclass: #biggerexample 
instanceVariableNames: 'num left right'
classVariableNames: ''
poolDictionaries:''
category: nil !






| v |

v := Example new.
v initialize: 1.
val := v setLeft: 3. val setLeft: 4.
'v1 value' printNl.
v numIs printNl.

'v2 left value' printNl.
v getLeft numIs printNl.
v getLeft getLeft numIs printNl.
!
