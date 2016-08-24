# SemanticVM Data Constraints specification

This is an **early draft** document describing Data Constraints primitives and a common library of Constraints.

## Constraint primitives (kinda like trivial data types)

#### Thing
Something that has an address, foundation for all data.

#### Byte
Just a 8-bit byte.

#### Numeric
[numeric_sign | num_type | num_value ]
Numeric types.
For now it's just a boring int, its size is platform dependent.
TODO: make specs for numerics. I want it to be automatic if no other constraints are set, meaning it's size and precision are unrestricted, it can be stored as a formula and lazy evaluated with provided precision. Operations on it would not evaluate the formula but transform it.

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

#### Sequence (List, Seq)
[Elem, Ref_to_next_Elem]

#### Hashed List (Index, Hash)
Array (or Seq?) with additional interface for lookups. Key in the item struct should be provided.

#### Set
Hashed List with unique keys.


## Constraint library

#### Alphabet
Namespace: { 
 __sign: [alphabet_sign, constraint_sign],
 character_struct: Ref_to_constraint,
 canonic_name : Nothing or str,
 ontology_uri : Nothing or str,
 encoding     : Nothing or str,
 character_set: Nothing or {}
}
Character_struct_constraint: Immutable Tuple of N Bytes. (example) 

A Set of encoded symbols defined somewhere.

#### Unicode Alphabet
Alphabet with URI: http://www.unicode.org/versions/Unicode9.0.0/
And Character constraint: Tuple byte*4

#### String
Array of Characters defined by Alphabet.

#### Atomic String (Keyword, Literal)
Those strings are best as identifiers, keywords.

#### Name
[Name_sign, String, Ref]
Label for something else defined by Ref. But I want to it be more generic.

#### Namespace
Set of Names.

#### Atom
Destructive operations are not permitted. 
TODO

#### Immutable
Mutations are not premitted.
TODO
