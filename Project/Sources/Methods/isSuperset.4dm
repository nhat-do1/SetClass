//%attributes = {"shared":true}
#DECLARE($setA : cs:C1710.Set; $setB : cs:C1710.Set) : Boolean
var $item : Variant

For each ($item; $setB.collection())
	If (Not:C34($setA.has($item)))
		return False:C215
	End if 
End for each 

return True:C214