<!-- #include file="genfuncs.asp"-->
<%
username = Request.Form("txtUserName")
pwd = Request.Form("txtPwd")

dim i
dim conn
  readydbcon
  sqlselect="select * from LOGINDETAILS WHERE UserName = '" & username & "' and password='" & pwd & "'"
  set rs_selectdetails=conn.execute(sqlselect)
  if not rs_selectdetails.eof then
  		
		session("username") = username
		
		if trim(rs_selectdetails("username")) = "Admin" and trim(rs_selectdetails("password")) = "admin123" then
			Response.Redirect("Admin_Panel.aspx?username="&username)
			
		end if
			Response.Redirect("player_info.aspx?username="&username)
  else
  		Response.Redirect("members_area.asp?mis=y")
		
  end if
   
%>
