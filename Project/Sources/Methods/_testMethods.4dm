//%attributes = {}
var $s1; $s2; $d1; $d2; $d3; $n; $u : cs:C1710.Set
var $p1; $p2 : Boolean

TRACE:C157
$s1:=cs:C1710.Set.new([1; 2; 3; 4])
$s2:=cs:C1710.Set.new([3; 4; 5; 6])

$d1:=getDifference($s1; $s2)  // Set {1,2}
$d2:=getDifference($s2; $s1)  // Set {5,6}

$d3:=getSymmetricDifference($s1; $s2)  // Set {1,2,5,6}

$n:=getIntersection($s1; $s2)  // Set {3,4}

$u:=getUnion($s1; $s2)  // Set {1,2,3,4,5,6}

$p1:=isSuperset($u; $d3)  // True
$p2:=isSuperset($d3; $n)  // False