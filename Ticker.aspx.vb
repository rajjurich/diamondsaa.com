Imports System.Data

Partial Class Ticker
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String

    
    Protected Sub BtnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnSubmit.Click
        If Page.IsPostBack = True Then
            If txtTickerDesc.Text = "" Then
                lblStatus.Text = "Enter Ticker Description"
                Exit Sub
            End If
        End If
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            objsyscon.updatedata("INSERT INTO Ticker(TickerId,TickerName) VALUES(" & Trim(txtTickerId.Text) & ",'" & Trim(txtTickerDesc.Text) & "')")
            lblStatus.Text = "Rescord Submitted Sucessfully..!!"
            Response.Redirect("Admin_Panel.aspx?username=" & username)
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable
        'Dim TickerID As Integer
        If Page.IsPostBack = False Then
            dt = objsyscon.getedata("SELECT max(TickerId) as TickerId FROM TICKER")
            If dt.Rows.Count > 0 Then
                txtTickerId.Text = Val(dt.Rows(0).Item("TickerId")) + 1
            Else
                txtTickerId.Text = 1
            End If
        End If
        txtTickerId.ReadOnly = True
        username = Request.QueryString("username")
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        End If
        lbluserName.Text = username
    End Sub
End Class
