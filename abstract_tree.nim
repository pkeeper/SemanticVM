

discard """ type
    # Abstract Tree nodes
    Node* = ref object of RootObj
        id*: string

    ProgramHeader* = ref object of Node
        scope: seq

    View* = ref object of Node
        name: string
        initFrame: ref Node
        scope: seq[ref Node]

    Container* = ref object of Node
        scope: seq[ref Node]
        name: string
        views: seq[ref View]

var
    blogContainer = Container(name: "BlogCont")
    #metaProg = ATProgramHeader(id: "Blog", scope: @[blogContainer])

#echo repr(metaProg)



# AT with variants
type
    NodeClass = enum
        ATProgramHeader,
        ATView,
        ATContainer,
        ATData
    ATNodeRef = ref ATNode
    ATNode = object
        case class: NodeClass
        of ATProgramHeader: scope: seq
        of ATView:
            viewname: string
            initFrame: ATNodeRef
            view: seq[ATNodeRef]
        of ATContainer:
            name: string
            views: seq[ATNodeRef]
            container: seq[ATNodeRef]
        of ATData: value: string



type
    TestType = ref TestTypeObj
    TestTypeObj = object
        name: string
        scope: @[]

var
    t = TestType(name: "name")
"""
import tables


type
    Node* = ref object of RootObj
        id*: string

    Container* = ref object of Node
        scope*: seq[Node]

    View* = ref object of Node
        name*: string
        initNode*: Node
        scope*: seq[Node]

    Obj* = ref object of Node
        fields*: Table[string,DataField]

    DataType* = enum
        Text,
        Numeric

    DataField* = ref DataFieldObj
    DataFieldObj* = object
        name* : string
        case Type*: DataType
        of Text:
            textVal*: string
        of Numeric:
            numVal*: int



proc forEach*(node: Node) =
    if node of Container:
        let c = Container(node)
        for node2 in c.scope:
            forEach(node2)
        echo "Container id: ", c.id
    elif node of View:
        let v = View(node)
        forEach(v.initNode)
        for node2 in v.scope:
            forEach(node2)
        echo "View id: ", v.id
    else:
        echo "Node id: ", node.id

