# SemanticVM Data Constraints specification

This is an ** early draft** document describing Data Constraints primitives and a common library of Constraints.

## Constraint primitives (kinda like trivial data types)

#### Thing
Something that has an address, foundation for all data.

#### Byte
Just a 8-bit byte.

#### Local Reference (Ref)
Memory link to a Thing.

#### Record (Tuple)
Tuple of different types, but a fixed length.

#### Array
Array of Things of the same type. Array of Refs is ok too.
Record: [array_sign | elem_type | length | obj1..objn]
Array_sign - tag that means it's gonna be an array.
Elem_type - Local Ref to (Atomic?) Constraint.
Length - number of elements.
obj - element.

#### Numeric
[numeric_sign | num_value ]
Just a boring int, int32 to be precise. Should be

#### Name
[Array, Ref]
Label for something else defined by Ref. But I want to it be more generic.

#### Namespace
Set (Hash) of names.

## Constraint library

#### Character (Unicode)
Numeric + Immutable.
http://dbpedia.org/ontology/unicode

#### String
Array of Characters

#### Atom
Destructive operations are not permitted. 
TODO

#### Immutable
TODO

