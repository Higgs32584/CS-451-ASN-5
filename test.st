"Smalltalk Push"

Object subclass: #Node
        instanceVariableNames: 'num left right '
        classVariableNames:' '
        poolDictionaries:''
        category: nil !
        
!Node methodsFor: 'Printing!'!
    initialize: n
        num := n
    !
    setLeft: l
        left := l
    !
    setRight: r
        right:=r 
    !
    getLeft 
        ^left
    !
    getRight
        ^right 
    !
    getNum
        ^num
    !
    compareNode: n 
        (num > n getNum)
            ifTrue:[^True]
            ifFalse:[^False]
    !
!
Object subclass: #BinaryTree
        instanceVariableNames: 'root'
        classVariableNames: ''
        poolDictionaries: ''
        category: nil !
        
    !BinaryTree methodsFor: 'initalization!'!
    
    initialize: n
        root := n
    !
    getRoot
        ^root
    !
    searchTree: n number: aNumber
        n ifNotNil: (n getLeft) aNumber searchTree
        
        n ifNotNil: (n getRight) aNumber searchTree
    !
    
    !
