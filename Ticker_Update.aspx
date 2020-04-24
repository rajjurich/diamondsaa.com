<%@ Page Language="VB" ValidateRequest ="false" AutoEventWireup="false" CodeFile="Ticker_Update.aspx.vb" Inherits="Ticker_Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link href="css/def.css" rel="stylesheet" type="text/css" />
    <title>Ticker Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <div id="logo">
            <a href="/"><img src="images/logo.png" alt="diamondsaa.com " border="0" /></a>
        </div>
        <div id="smile"><img src="images/smilesoccer.gif" width="59" height="59" /></div>
            <h1><a href="/">diamond sports association</a></h1>
            <h2>Ambernath</h2><br />
            <h6>"soccer is our religion"</h6>
        </div>
    <div>
        <%--<asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label>--%>
        <table id="content" width="1000" cols = "3" border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td colspan="1"><h2>Welcome <asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label> ,</h2></td>
                <td colspan ="1"><h2>&nbsp;</h2></td>
                <td colspan="1"><h2>&nbsp;</h2></td>
                <td colspan="1" align="center"><h2><a href="http://diamondsaa.com/members_area.asp">Sign out</a></h2></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan ="4" align = "center" id="colTwo">
                    <table cols ="2">
            <tr>
                <td colspan ="1" style="height: 24px"><asp:Label ID="Label1" runat="server" Text="Select ID"></asp:Label></td>
                <td colspan ="1" style="width: 502px; height: 24px;" align="left"><asp:DropDownList ID="cmbTickerId" AutoPostBack = "true" OnTextChanged="cmbTickerId_TextChanged" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan ="1"><asp:Label ID="Label2" runat="server" Text="Ticker"></asp:Label></td>
                <td colspan ="1" style="width: 502px"><asp:TextBox ID="txtTickerDesc" runat="server" Width="529px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan ="1">&nbsp;</td>
                <td colspan ="1" style="width: 502px" align="left"><asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td colspan ="1">&nbsp;</td>
                <td colspan ="1" style="width: 502px" align="right" >
                    <asp:Button ID="BtnBackMain" runat="server" Text="Back to Main" />
                    <asp:Button ID="BtnChange" runat="server" Text="CHANGE" Width="74px" />
                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" />
                </td>
            </tr>
        </table>
        
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
