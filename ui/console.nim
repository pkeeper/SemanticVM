import ../actions
import ../abstract_tree
import tables
from strutils import parseEnum
import unicode
import terminal

proc printFields(obj: Obj) =
  for x, y in obj.fields:
    echo x, y.textVal


proc printTree(node: Node) =
    if node of Container:
        let c = Container(node)
        for node2 in c.scope:
            printTree(node2)
        echo "Container id: ", c.id
    elif node of View:
        let v = View(node)
        printTree(v.initNode)
        for node2 in v.scope:
            printTree(node2)
        echo "View id: ", v.id
    elif node of Obj:
        let o = Obj(node)
        o.printFields
    else:
        echo "Node id: ", node.id

proc render*(node: Node) =
    eraseScreen()
    echo "Actions: "
    echo "\t[Enter]\tRefresh"
    echo "\texit\tExit"
    echo "Data: \n"
    node.printTree

proc getInput*(): Actions =
    result = parseEnum[Actions](readLine(stdin).toLower)
    
