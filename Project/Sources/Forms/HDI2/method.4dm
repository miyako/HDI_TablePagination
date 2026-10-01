C_LONGINT:C283($i)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		UNLOAD RECORD:C212([INFO:1])
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		If (Is Windows:C1573)
			ST SET ATTRIBUTES:C1093(*; "information_1"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
			ST SET ATTRIBUTES:C1093(*; "information_2"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
			ST SET ATTRIBUTES:C1093(*; "information_3"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		End if 
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276=2)
			WParea:=WP New:C1317
		End if 
		
		If (Is Windows:C1573)
			ST SET ATTRIBUTES:C1093(*; "information_1"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
			ST SET ATTRIBUTES:C1093(*; "information_2"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
			ST SET ATTRIBUTES:C1093(*; "information_3"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		End if 
		
End case 

