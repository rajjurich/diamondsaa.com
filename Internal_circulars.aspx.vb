
Partial Class Internal_circulars
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            If Session("username") = "" Then
                Response.Redirect("http://diamondsaa.com/about.asp")
            End If

        End If
    End Sub
End Class
