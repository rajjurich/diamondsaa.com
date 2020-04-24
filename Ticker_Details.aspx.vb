Imports System.Data

Partial Class Ticker_Details
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            Dim dt As New DataTable
            dt = objsyscon.getedata("select * from ticker order by TickerId")
            If dt.Rows.Count > 0 Then
                GridView_TickerDetails.DataSource = dt
                GridView_TickerDetails.DataBind()
            End If

        End If

        username = Request.QueryString("username")
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        End If
        lbluserName.Text = username
    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        Response.Redirect("Ticker.aspx?username=" & Request.QueryString("username"))

    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        Response.Redirect("Ticker_Update.aspx?username=" & username)

    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Response.Redirect("Ticker_Delete.aspx?username=" & username)
    End Sub

    Protected Sub BtnGoMain_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnGoMain.Click
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            Response.Redirect("Admin_Panel.aspx?username=" & username)
        End If
    End Sub
End Class
