## Description
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
