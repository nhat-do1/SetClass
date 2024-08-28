//%attributes = {"shared":true}
#DECLARE($setA : cs:C1710.Set; $setB : cs:C1710.Set) : cs:C1710.Set
var $diff : cs:C1710.Set
var $item : Variant

$diff:=cs:C1710.Set.new($setA.collection())

For each ($item; $setB.collection())
	If ($diff.has($item))
		$diff.delete($item)
	Else 
		$diff.add($item)
	End if 
End for each 

return $diff

