## Description
**Constructor**\
INPUT:\
A collection of numbers and/or text.

OUTPUT:\
A class object containing distinct values from the collection.

**Properties & Functions**
| Syntax | Result |
| ----------- | ----------- |
| *.size* | The total amount of values in the set.  |
| *.add(num or text)*  | Add a value to the set.<sup>C</sup> |
| *.has(num or text)* | Check if the set contains a value. |
| *.delete(num or text)*  | Remove a value from the set.<sup>C</sup> |
| *.clear()* | Remove all values from the set.<sup>C</sup> |
| *.collection()*| Create a collection of values from the set. |

*<sup>C</sup> = chainable*

## Example

```4d
$mySet:=cs.Set.new(["foo"; 12; "12"; 1.56; "foo"])  // Set {"foo","12",1.56,12}
$size:=$mySet.size  // 4
$mySet.add("bar")  // Set {"bar","foo","12",1.56,12}
$mySet.has("bar")  // True
$mySet.has("baz")  // False
// chaining
$mySet.delete("foo").add(4).delete(1.56)  // Set {"bar","12",4,12}
$coll:=$mySet.collection()  // ["bar","12",4,12]
$mySet.clear()  // empty Set {}
```
