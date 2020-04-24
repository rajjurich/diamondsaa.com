<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approved_user.aspx.cs" Inherits="Approved_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/def.css" rel="stylesheet" type="text/css" />    
    <title>Approved User</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <div id="logo">
            <a href="/"><img src="images/logo.png" alt="diamondsaa.com " border="0" /></a>
        </div>
        <div id="smile"><img src="images/smilesoccer.gif" width="59" height="59" alt="" /></div>
            <h1><a href="/">diamond sports association</a></h1>
            <h2>Ambernath</h2><br />
            <h6>"soccer is our religion"</h6>
    </div>
    
    <div>
        <table id="content" border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td colspan="1" style="height: 46px"><h2>Welcome <asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label> ,</h2></td>
                <td colspan="1" align="center" style="height: 46px"><h2><a href="http://diamondsaa.com/signout.asp">Sign out</a></h2></td>
            </tr>
            <tr>
                <td colspan ="2" align="center" class="colTwo1">
                    <strong>User Details :</strong><br /><br />
                    <div class="colTwo1">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" Width="100px">
                            <Columns>
                                <asp:TemplateField> 
                            <ItemStyle Width="1%" />
                            <ItemTemplate> 
                                    <asp:CheckBox ID="usersector" runat="server" />
                                    
                                </ItemTemplate> 
                            </asp:TemplateField>
                                <asp:BoundField DataField="s_id" HeaderText="Id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="s_id" />
                                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" DataFormatString="{0:dd-M-yyyy}" HtmlEncode="false" />
                                <%--<asp:BoundField DataField="off_no" HeaderText="off_no" 
                                    SortExpression="off_no" />--%>
                                <%--<asp:BoundField DataField="sports" HeaderText="Sports" 
                                    SortExpression="sports" />--%>
                                <asp:BoundField DataField="achiv" HeaderText="Achievements" SortExpression="achiv" />
                                <asp:BoundField DataField="fpos" HeaderText="Field Position" SortExpression="fpos" />
                                <asp:BoundField DataField="about" HeaderText="About" SortExpression="about" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:mainConnString %>" 
                            SelectCommand="SELECT * FROM [dsaa_data]"></asp:SqlDataSource>
                    </div>
                    <br />
                    <asp:Button ID="BtnGOmain" runat="server" Text="Go to Main" onclick="BtnGOmain_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Approve" 
                        onclick="Button1_Click" />
                
                    <asp:Button ID="Button2" runat="server" Text="Reject" />
                    <asp:Button ID="Button3" runat="server" Text="Delete" />
                </td>
                
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;
                </td>
            </tr>
        </table>
      
    </div>
    
    <div id="divider">&nbsp;</div>
 
    <div id="footer" align="center" >
    <br /><br />
	Copyright &copy; 2010<script type="text/javascript">
    <!--
    var currentTime = new Date()

    var year = currentTime.getFullYear()

    if(year==2010)
        {
	        year=''
        }
    else
        {
	    year=' - '+year
        }
        document.write(year)
    //-->
    </script>. All Rights Reserved.  Powered By <a href="http://zen.ae" target="_blank">Zen Interactive Technologies</a>&nbsp;&nbsp;&nbsp;<!-- {%FOOTER_LINK} -->
	</div>
    </form>
</body>
</html>
