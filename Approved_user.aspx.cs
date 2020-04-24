using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Approved_user : System.Web.UI.Page
{
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Sfd");
    }

    protected void BtnGOmain_Click(object sender, EventArgs e)
    {
       /* Response.Write("1111");
        username = Request.QueryString["username"];
        if (username == "")
        {
            Response.Redirect("Admin_Panel.aspx?username=" + username);
        }
        lbluserName.Text = username;*/
        Response.Redirect("Admin_Panel.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("222");
    }
}
