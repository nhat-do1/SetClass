Class constructor($param : Collection)
	This:C1470._strSet:={}
	This:C1470._numSet:={}
	This:C1470.size:=0
	
	If ($param=Null:C1517)
		return 
	End if 
	
	var $item : Variant
	
	For each ($item; $param)
		This:C1470.add($item)
	End for each 
	
Function has($item : Variant) : Boolean
	Case of 
		: (Value type:C1509($item)=Is text:K8:3)
			return This:C1470._strSet[String:C10($item)]=True:C214
			
		: ((Value type:C1509($item)=Is longint:K8:6) | (Value type:C1509($item)=Is real:K8:4))
			return This:C1470._numSet[String:C10($item)]=True:C214
		Else 
			ALERT:C41("Param type not allowed.")
	End case 
	
Function add($item : Variant) : cs:C1710.Set
	Case of 
		: (Value type:C1509($item)=Is text:K8:3)
			If (This:C1470._strSet[String:C10($item)]=Null:C1517)
				This:C1470._strSet[String:C10($item)]:=True:C214
				This:C1470.size+=1
			End if 
			
		: ((Value type:C1509($item)=Is longint:K8:6) | (Value type:C1509($item)=Is real:K8:4))
			If (This:C1470._numSet[String:C10($item)]=Null:C1517)
				This:C1470._numSet[String:C10($item)]:=True:C214
				This:C1470.size+=1
			End if 
		Else 
			ALERT:C41("Param type not allowed.")
	End case 
	
	return This:C1470
	
Function delete($item : Variant) : cs:C1710.Set
	Case of 
		: (Value type:C1509($item)=Is text:K8:3)
			If (This:C1470._strSet[String:C10($item)]=True:C214)
				OB REMOVE:C1226(This:C1470._strSet; String:C10($item))
				This:C1470.size-=1
			End if 
			
		: ((Value type:C1509($item)=Is longint:K8:6) | (Value type:C1509($item)=Is real:K8:4))
			If (This:C1470._numSet[String:C10($item)]=True:C214)
				OB REMOVE:C1226(This:C1470._numSet; String:C10($item))
				This:C1470.size-=1
			End if 
		Else 
			ALERT:C41("Param type not allowed.")
	End case 
	
	return This:C1470
	
Function clear() : cs:C1710.Set
	This:C1470._strSet:={}
	This:C1470._numSet:={}
	This:C1470.size:=0
	
	return This:C1470
	
Function collection()->$coll : Collection
	$coll:=[]
	
	var $item : Text
	
	For each ($item; This:C1470._strSet)
		$coll.push($item)
	End for each 
	
	For each ($item; This:C1470._numSet)
		$coll.push(Num:C11($item))
	End for each 
	
	return $coll
	
	
	
	
	