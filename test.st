"THIS CODE IS DONE BY:Michael Higgins"
"PURPOSE: Object Class "
"INPUT: none"
"OUTPUT: none"
Object subclass: #BinaryTree
        instanceVariableNames: 'root'
        classVariableNames: ''
        poolDictionaries: ''
        category: nil !
    !  
BinaryTree subclass: #Node
        instanceVariableNames: 'num left right'
        classVariableNames: 'left right'
        poolDictionaries: ''
        category: nil !
    !
    !Node methodsFor: 'initalization!'!
    initialize: n
    num := n
    !
    compareNum:num_input
        (num > num_input)
            ifTrue:[
                 left ifNil:[left:= Node new. left initialize: num_input]
                     ifNotNil:[left compareNum:num_input]
                ]
            ifFalse:[
                right ifNil:[right:= Node new. right initialize: num_input]
                    ifNotNil:[right compareNum:num_input]]
    !
    "PURPOSE: traversing tree in inOrder"
    "INPUT: no input,called on node"
    "OUTPUT: number"
    print_inOrder
        left ifNotNil:[left print_inOrder].
        num printNl.
        right ifNotNil:[right print_inOrder].
    !
    "PURPOSE: traversing tree in preOrder"
    "INPUT: no input,called on node, returns error if no node exists"
    "OUTPUT: none, printed list of numbers"
    print_preOrder
    num printNl.
    left ifNotNil:[left print_preOrder].
    right ifNotNil:[right print_preOrder].
    !
    "PURPOSE: traversing tree in postOrder"
    "INPUT: no input,called on node,returns error if no node exists"
    "OUTPUT: none, printed numbers inOrder "
    print_postOrder
    left ifNotNil:[left print_postOrder].
    right ifNotNil:[right print_postOrder].
    num printNl.
    !
    !
        
    !
    !BinaryTree methodsFor: 'initalization!'!
    "PURPOSE: insert number for binary tree, set root if root is nil"
    "INPUT: number"
    "OUTPUT: none"
    insert: n
        root ifNil:[root := Node new. root initialize:n]
             ifNotNil:[root compareNum: n].
    !
    preOrder
    root ifNotNil:[root print_preOrder].
    root ifNil:['Root Not initialized!' printNl].
    !
    inOrder
    root ifNotNil:[root print_inOrder].
    root ifNil:['Root Not initialized!' printNl].
    !
    postOrder
    root ifNotNil:[root print_postOrder].
    root ifNil:['Root Not initialized!' printNl].
    !
    !
!
"Main - for testing"
| t r |
    t := BinaryTree new.
    t insert: 10.
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
|t2 |
    t2 := BinaryTree new.
    t2 insert: 1.
    1 to: 20 do: [:x | t2 insert: x. ]
    "Binary Tree singular branch stress test"
    'Test 2' printNl.
    'Preorder' printNl.
    t2 preOrder printNl.
    'InOrder' printNl.
    t2 inOrder.
    'PostOrder' printNl.
    t2 postOrder.
!
|t3 |
    "Test 3 Binary Tree works as empty"
    t3 := BinaryTree new.
    t3 preOrder.
    t3 inOrder.
    t3 postOrder.
|t4|
    "Test single insert binary Tree"
    t4 := BinaryTree new.
    t4 insert: 5.
    t4 preOrder.
|t5 |
    "Test to make sure Node is a subclass!"
    BinaryTree inspect.
