//%attributes = {}
var $mySet : cs:C1710.Set
var $size : Integer
var $bool1; $bool2 : Boolean
var $coll : Collection

TRACE:C157
$mySet:=cs:C1710.Set.new(["foo"; 12; "12"; 1.56; "foo"])  // Set {"foo","12",1.56,12}
$size:=$mySet.size  // 4
$mySet.add("bar")  // Set {"bar","foo","12",1.56,12}
$bool1:=$mySet.has("bar")  // True
$bool2:=$mySet.has("baz")  // False
// chaining
$mySet.delete("foo").add(4).delete(1.56)  // Set {"bar","12",4,12}
$coll:=$mySet.collection()  // ["bar","12",4,12]
$mySet.clear()  // empty Set {}