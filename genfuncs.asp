<%
Sub ReadyDBCon
  Set conn=Server.CreateObject("ADODB.Connection")
  ' conn.open "PROVIDER=SQLOLEDB;Server=DiamondDb12.db.10911317.hostedresource.com;Address=DiamondDb12.db.10911317.hostedresource.com,1433;UID=DiamondDb12;PWD=DiamondDb@123;DATABASE=DiamondDb12"  
	conn.open "PROVIDER=SQLOLEDB;Server=(local);UID=DiamondDb12;PWD=DiamondDb@123;DATABASE=DiamondDb12"  
  'conn.open "PROVIDER=SQLOLEDB;DATA SOURCE=murugan;UID=sa;PWD=;DATABASE=VGSMDB"
end sub


%>