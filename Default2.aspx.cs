using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.Odbc;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OdbcConnection conn;
        OdbcCommand command;
        string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
        conn = new OdbcConnection(connectionString);
        try
        {

            conn.Open();
            string query = "select * from ticker";
            //Response.Write(query);
            command = new OdbcCommand(query, conn);
            OdbcDataReader dr = command.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                Response.Write("ss");
            }
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("ERROR : " + ex);
        }
    }
}
