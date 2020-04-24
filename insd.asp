<!-- #include file="genfuncs.asp"-->
<%
dim conn
  readydbcon
fname=request.form("textfield")

dd=request.form("DDay")
mm=request.form("DMonth")
yy=request.form("DYear")
if dd="" or mm="" or yy="" then
dob=""
else
dob=mm&"-"&dd&"-"&yy


response.Write(dob)
'response.End()
end if
add=request.form("textfield3")
offadd = Request.Form("txtOfficeAddress")
mob=request.form("textfield4")
offno=Request.Form("txtOffTelNo")
email=request.form("textfield2")
indsince=request.form("textfield5")
sports=request.form("textfield6")
achiv=request.form("textfield7")
fpos=request.form("textfield8")
about=request.form("textfield9")
'response.Write(fname)
'response.Write(dob)
'response.Write(add)
'response.Write(contact)
'response.Write(indsince)
'response.Write(sports)
'response.Write(achiv)
'response.Write(fpos)
'response.Write(about)
'response.End()
if fname="" or dob="" or add="" or offadd="" or mob="" or offno="" or email="" or indsince="" or sports="" or achiv="" or fpos="" or  about=""   then
response.Redirect("signup.asp?mis=n")
else

sql_insert= "insert into dsaa_data values('"&fname&"','"&dob&"','"&add&"','"&offadd&"','"&mob&"','"&offno&"','"&email&"','"& indsince&"','"&sports&"','"&achiv&"','"&fpos&"','"&about&"')"
		  conn.execute(sql_insert)
response.Redirect("signup.asp?mis=y")


end if
%>
