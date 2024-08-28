//%attributes = {"shared":true}
#DECLARE($setA : cs:C1710.Set; $setB : cs:C1710.Set) : cs:C1710.Set
var $intersection : cs:C1710.Set
var $item : Variant

$intersection:=cs:C1710.Set.new()

For each ($item; $setB.collection())
	If ($setA.has($item))
		$intersection.add($item)
	End if 
End for each 

return $intersection