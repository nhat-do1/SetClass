## Description
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
