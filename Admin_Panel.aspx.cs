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


public partial class Admin_Panel : System.Web.UI.Page
{
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        username = Request.QueryString["username"];
        if (username == "")
        {
            Response.Redirect("http://diamondsaa.com/about.asp");
        }
        lbluserName.Text = username;

    }
    protected void btnTickerDetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ticker_Details.aspx?username=" + username);
    }
    protected void btnTestimonialDetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Testimonial_Details.aspx?username=" + username);
    }
    protected void btnuserapproval_Click(object sender, EventArgs e)
    {
        Response.Redirect("Approved_user.aspx?username=" + username);
    }
}
