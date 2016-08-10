import orient

let database = newOrientDatabase("Blog", "graph", "admin", "admin")
var connection = database.newOrientConnection("localhost", false, Port(2424))

var all_keys = connection.sqlQuery("select from V")

echo $allkeys