import abstract_tree
import tables
import ui
import actions

echo "View Init"


proc makeView(node: Node): Node =
    result = node

proc defaultView*(descrs: Node) =
    while true:
        render(descrs)
        if getInput() == Exit:
            break
    echo "Exiting ..."

