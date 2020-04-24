Imports System.Data

Partial Class player_info
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        username = Session("username")

        If username = "" Then
            username = Request.QueryString("username")
            Session("username") = username
        End If
        'Else

        'End If


        'Response.Write(Session("username"))
        'Response.End()
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        End If
        lbluserName.Text = username
    End Sub
End Class
