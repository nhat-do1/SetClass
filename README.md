A class and set of methods to emulate some of the functionality of JavaScript Set objects.

## Class: Set
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


## Method: getDifference
INPUT:\
(1) Set A, (2) Set B

OUTPUT:\
Set C, which is the difference of Set A versus Set B.

NOTE:\
Order of inputs matters, i.e. getDifference(A;B) =/= getDifference(B;A)

## Example

```4d
$s1:=cs.Set.new([1; 2; 3; 4])
$s2:=cs.Set.new([3; 4; 5; 6])
$d1:=getDifference($s1; $s2)  // Set {1,2}
$d2:=getDifference($s2; $s1)  // Set {5,6}
```


## Method: getIntersection
INPUT:\
(1) Set A, (2) Set B

OUTPUT:\
Set C, which is the intersection of Set A and Set B.

## Example

```4d
$s1:=cs.Set.new([1; 2; 3; 4])
$s2:=cs.Set.new([3; 4; 5; 6])
$s3:=cs.Set.new([7; 8])
$n1:=getIntersection($s1; $s2)  // Set {3,4}
$n2:=getIntersection($s1; $s3)  // empty Set {}
```


## Method: getSymmetricDifference
INPUT:\
(1) Set A, (2) Set B

OUTPUT:\
Set C, which is the symmetric difference of Set A and Set B.

NOTE:\
Order of inputs does not matter, i.e. getDifference(A;B) = getDifference(B;A)

## Example

```4d
$s1:=cs.Set.new([1; 2; 3; 4])
$s2:=cs.Set.new([3; 4; 5; 6])
$d:=getSymmetricDifference($s1; $s2)  // Set {1,2,5,6}
```


## Method: getUnion
INPUT:\
(1) Set A, (2) Set B

OUTPUT:\
Set C, which is the union of Set A and Set B.

## Example

```4d
$s1:=cs.Set.new(["a"; "b"])
$s2:=cs.Set.new(["c"; "d"])
$u:=getUnion($s1; $s2)  // Set {a,b,c,d}
```


## Method: isSuperset
INPUT:\
(1) Set A, (2) Set B

OUTPUT:\
True, if Set A is a superset of Set B.
False, otherwise.

## Example

```4d
$s1:=cs.Set.new([1; 2; 3])
$s2:=cs.Set.new([4; 5; 6])
$s3:=cs.Set.new([1; 2; 3; 4; 5; 6])
$b1:=isSuperset($s1; $s2)  // False
$b2:=isSuperset($s1; $s3)  // False
$b3:=isSuperset($s3; $s1)  // True
```





