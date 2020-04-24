<%@ Page Language="VB" ValidateRequest ="false" AutoEventWireup="false" CodeFile="Testimonial_Details.aspx.vb" Inherits="Testimonial_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link href="css/def.css" rel="stylesheet" type="text/css" />
<title>Untitled Page</title>
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
        <table cols="2" id="content" border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td colspan="1" style="height: 46px"><h2>Welcome <asp:Label ID="lbluserName" runat="server" Text="Label"></asp:Label> ,</h2></td>
                <td colspan="1" align="center" style="height: 46px"><h2><a href="http://diamondsaa.com/signout.asp">Sign out</a></h2></td>
            </tr>
            <tr>
                <td colspan ="2" align="center" id="colTwo" style="height: 352px">
                    <strong>Testimonials Details :</strong><br /><br />
                    <div>
                    <asp:GridView ID="Testimonials" runat="server" DataSourceID="TestimonialDataSource" EnableViewState="False" AutoGenerateColumns="False" AllowPaging="True" OnRowDataBound="Testimonials_RowDataBound" Width="593px">
                        <Columns> 
                            <asp:TemplateField> 
                            <ItemStyle Width="1%" />
                            <ItemTemplate> 
                                    <asp:CheckBox ID="TestimonialSelector" runat="server" />
                                    
                                </ItemTemplate> 
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="Testimonial" HeaderText="Testimonials" SortExpression="Testimonial">
                            <ItemStyle Width="50%" />

                            </asp:BoundField>
                        </Columns> 
                    </asp:GridView>
                    </div>
                    <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Button ID="BtnGoMain" runat="server" Text="Go to Main" />
                    <asp:Button ID="BtnApprove" runat="server" Text="Approve" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;
                </td>
            </tr>
        </table>
        <asp:ObjectDataSource ID="TestimonialDataSource" runat="server" SelectMethod="getedata"
                        TypeName="Systemcon">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="SELECT Testimonial FROM TESTIMONIAL WHERE AdminAppoval='N'"
                                Name="query" Type="String" />
                        </SelectParameters>
        </asp:ObjectDataSource>
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
