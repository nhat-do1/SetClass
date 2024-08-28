## Description
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
