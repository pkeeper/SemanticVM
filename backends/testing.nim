import ../abstract_tree
import tables

var db* = "DB"

let
    first = Node(id: "InitNode")
    other = Node(id: "Hi")
    container =
        Container(scope: @[Node(id: "Node1"), Node(id: "Node2")])

    # It is necessary to cast to Node here if you initialize a seq like this
    view = View(name:"View1", initNode: first, scope: @[container.Node, other])

proc printFields(obj: Obj) =
  for x, y in obj.fields:
    echo x, y.textVal

echo $view.scope.high
view.scope.add(Container(id: "myCOnt!", scope: @[]))
echo $view.scope.high
forEach view

echo "/n"

var
    blogPost = Obj(fields: {"tilter":DataField(name:"Title",Type:Text),
                             "cont":DataField(name:"Content", Type:Text)}.toTable)

blogPost.printFields
