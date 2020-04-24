
Partial Class signout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            Session.Abandon()
            Response.Redirect("http://diamondsaa.com/members_area.asp")
        End If
    End Sub
End Class
