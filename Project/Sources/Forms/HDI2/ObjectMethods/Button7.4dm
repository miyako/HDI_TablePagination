var $_col : Collection
var $range; $table; $row; $col : Object
var $i : Integer

$_col:=New collection:C1472("Alpha Bravo"; "Charlie Delta Echo"; "Foxtrot Golf"; "Hotel India"; "Juliett lilo lima mike"; "november oscar"; "papa quebec"; "romeo sierra tango"; "uniform victor"; "whisky x-ray yankee zoulou")

WParea:=WP New:C1317

$range:=WP Text range:C1341(WParea; wk start text:K81:165; wk end text:K81:164)
$table:=WP Insert table:C1473($range; wk replace:K81:177)

For ($i; 1; 200)
	$row:=WP Table append row:C1474($table; $i; 1000+(Random:C100%1000); ($_col[Random:C100%10]+" ")*(1+(Random:C100%10)))
End for 

$col:=WP Table get columns:C1476($table; 1)
WP SET ATTRIBUTES:C1342($col; wk width:K81:45; "10mm")

$col:=WP Table get columns:C1476($table; 2)
WP SET ATTRIBUTES:C1342($col; wk width:K81:45; "15mm")

$col:=WP Table get columns:C1476($table; 3)
WP SET ATTRIBUTES:C1342($col; wk width:K81:45; "50mm")
