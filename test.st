"THIS CODE IS DONE BY:Michael Higgins"
"PURPOSE:"
"INPUT:"
"OUTPUT:"
Object subclass: #Node
        instanceVariableNames: 'num left right '
        classVariableNames:' '
        poolDictionaries:''
        category: nil !
"PURPOSE: initializing actual Node Value"
"INPUT: number to set value to!"
"OUTPUT: No output"        
!Node methodsFor: 'Printing!'!
    initialize: n
        num := n
    !
"PURPOSE: traversing tree to find place to put value in tree"
"INPUT: number to set value to!"
"OUTPUT: No output, called recursively until a null is reached, and value is"
"Initialized there"
    compareNum:numba
        (num > numba)
            ifTrue:[
                left ifNil:[left:= Node new. left initialize: numba]
                     ifNotNil:[left compareNum:numba]
                ]
            ifFalse:[
                right ifNil:[right:= Node new. right initialize: numba]
                    ifNotNil:[right compareNum:numba]]
    !
    "PURPOSE: traversing tree in inOrder"
    "INPUT: no Input"
    "OUTPUT: number"
    print_inOrder
    left ifNotNil:[left print_inOrder].
    num printNl.
    right ifNotNil:[right print_inOrder].
    !
    "PURPOSE: traversing tree in preOrder"
    "INPUT: no Input"
    "OUTPUT: number"
    print_preOrder
    num printNl.
    left ifNotNil:[left print_preOrder].
    right ifNotNil:[right print_preOrder].
    !
    "PURPOSE: traversing tree in postOrder"
    "INPUT: no Input"
    "OUTPUT: number"
    print_postOrder
    left ifNotNil:[left print_postOrder].
    right ifNotNil:[right print_postOrder].
    num printNl.
    !
!
Object subclass: #BinaryTree
        instanceVariableNames: 'root'
        classVariableNames: ''
        poolDictionaries: ''
        category: nil !
        
    !BinaryTree methodsFor: 'initalization!'!
    
    initialize: n
        root := Node new.
        root initialize: n.
    !
    getRoot
        ^root
    !
    insert: n
        root compareNum: n
    !
    preOrder
    root print_preOrder.
    !
    inOrder
    root print_inOrder.
    !
    postOrder
    root print_postOrder.
    !
    !
"Main - for testing"
| t r |
    t := BinaryTree new.
    t initialize: 10.
    t insert: 5.
    t insert: 12.
    t insert: 3. 
    t insert: 7.
    t insert: 11.
    t insert: 15.
    
    'Test 1' printNl.
    'Preorder' printNl.
    t preOrder.
    'InOrder' printNl.
    t inOrder.
    'PostOrder' printNl.
    t postOrder.
    '__________________________' printNl.
!
|t1 |
    t1 := BinaryTree new.
    t1 initialize: 1.
    1 to: 10000 do: [:x | t1 insert: x. ]
    
    
    'Test 2' printNl.
    'Preorder' printNl.
    t1 preOrder printNl.
    'InOrder' printNl.
    "t1 inOrder."
    'PostOrder' printNl.
    "t1 postOrder."
