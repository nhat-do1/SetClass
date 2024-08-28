## Description
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
