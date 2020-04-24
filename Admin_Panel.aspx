<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Panel.aspx.cs" Inherits="Admin_Panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="css/def.css" rel="stylesheet" type="text/css" />
    
    <title>Admin Panel</title>
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
        <%--<asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label>--%>
        <table id="content" width="1000" border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td colspan="1" style="height: 46px"><h2>Welcome <asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label> ,</h2></td>
                <td colspan ="1" style="height: 46px"><h2>&nbsp;</h2></td>
                <td colspan="1" style="height: 46px"><h2>&nbsp;</h2></td>
                <td colspan="1" align="center" style="height: 46px"><h2><a href="http://diamondsaa.com/signout.asp">Sign out</a></h2></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan ="4" align = "center" id="colTwo">
                    <strong><asp:Label ID="Label1" runat="server" Text="Check out"></asp:Label></strong><br />
                    <br />
                    <asp:Button ID="btnTickerDetails" runat="server" Text="Ticker Details" 
                        Width="152px" onclick="btnTickerDetails_Click" />
                    <br /><br />
                    <asp:Button ID="btnTestimonialDetails" runat="server" 
                        Text="Testimonial  Details" Width="152px" 
                        onclick="btnTestimonialDetails_Click" />
                    <br /><br />
                    <asp:Button ID="btnuserapproval" runat="server" Text="Approved Users" 
                        Width="152px" onclick="btnuserapproval_Click" />
                    <br /><br />
                    
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
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
