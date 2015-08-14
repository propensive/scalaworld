The Shapeless library provides generic programming facilities for Scala. It
does this by employing various techniques and language features, including
singleton types, implicit witness proofs, path dependent types, and refinement
types.

In this talk, we’ll look at how Shapeless is used in [scodec](http://scodec.org)
to support conversion of binary data to Scala objects and vice versa. It will
provide a brief overview of Shapeless HLists and Coproducts, as well as records
and unions, and show how these pieces are used in something as mundane as
binary encoding and decoding.

