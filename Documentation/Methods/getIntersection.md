## Description
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
