# SemanticVM Data Constraints specification

This is a **draft** document describing Data Constraints primitives and a common library of Constraints.

## Constraint primitives (kinda like trivial data types)

#### Thing
Something that has address, foundation for all data.

#### Byte
Just a 8-bit byte.

#### Local Reference (Link)
Memory link to Thing.

#### Record
Tuple of different types

#### Array
Array of things of the same type. Array of Refs is ok too.
Record: [array_sign | elem_type | length | obj1..objn]
Array_sign - tag that means it's gonna be an array.
Elem_type - Local Ref to (Atomic?) Constraint.
Length - number of elements.
obj - element.

#### Numeric
Array of bytes

## Constraint library

#### Character (Unicode)
Numeric + Immutable.
http://dbpedia.org/ontology/unicode

#### Atom
Destructive operations are not permitted. 
TODO

#### Immutable
TODO

#### Name

