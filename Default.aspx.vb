Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.IsPostBack = False Then
            Dim dt As New DataTable
            dt = objsyscon.getedata("select * from ticker")
            If dt.Rows.Count > 0 Then
                GridView_TickerDetails.DataSource = dt
                GridView_TickerDetails.DataBind()

            End If
        End If
    End Sub
End Class
