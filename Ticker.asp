<!-- #include file="genfuncs.asp"-->
    <%
    dim conn
  		readydbcon
    'conn.Open
	Dim i
    DIM mySQL
    mySQL = "SELECT * FROM Ticker"

    DIM objRS
    Set objRS = Server.CreateObject("ADODB.Recordset")
    objRS.Open mySQL, conn
    %>
    <HTML>
    <HEAD><TITLE>ASP Web Pro</TITLE></HEAD>
    <BODY>
    <table>
    <% objRS.MoveFirst
	Do While Not objRS.EOF
    For i = 0 to objRS.Fields.Count - 1 %>
<tr><td><% Response.Write objRS.Fields(i) %></td></tr>
<% objRS.MoveNext
	Next
	loop
%>

</table>
    </BODY>
    </HTML>
    <%
' Don't forget to close your connection after you display your data.
objRS.Close
Set objRS = Nothing
conn.Close
Set conn = Nothing
%>
