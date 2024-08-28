//%attributes = {"shared":true}
#DECLARE($setA : cs:C1710.Set; $setB : cs:C1710.Set) : cs:C1710.Set
var $union : cs:C1710.Set
var $item : Variant

$union:=cs:C1710.Set.new($setA.collection())

For each ($item; $setB.collection())
	$union.add($item)
End for each 

return $union
