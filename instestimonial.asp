<!-- #include file="genfuncs.asp"-->
<%
dim conn
  readydbcon
testimonial=request.form("txtTestimonial")
'sqlselect="SELECT getdate() as Date"
  'set rs_selectdate=conn.execute(sqlselect)
'dt = rs_selectdate("Date")
co_date= date()
co_ip= Request.ServerVariables("HTTP_X_FORWARDED_FOR")

if trim(testimonial)="" then
response.Redirect("testimonials.asp?mis=n")
else

sql_insert= "insert into TESTIMONIAL values('"& co_date &"','"&co_ip&"','"&testimonial&"','N')"
		  conn.execute(sql_insert)
response.Redirect("testimonials.asp?mis=y")


end if
%>
