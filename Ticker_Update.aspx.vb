Imports System.Data

Partial Class Ticker_Update
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable
        Dim i As Integer
        If Page.IsPostBack = False Then
            dt = objsyscon.getedata("select * from ticker order by TickerId")
            If dt.Rows.Count > 0 Then
                cmbTickerId.Items.Clear()
                For i = 0 To dt.Rows.Count - 1
                    cmbTickerId.Items.Add(dt.Rows(i).Item("TickerId"))
                Next
            End If

            Dim dtDesc As New DataTable
            dtDesc = objsyscon.getedata("SELECT * FROM TICKER WHERE TickerId = " & cmbTickerId.Text & "")
            If dtDesc.Rows.Count > 0 Then
                txtTickerDesc.Text = dtDesc.Rows(0).Item("TickerName")
            End If
            
        End If
        txtTickerDesc.ReadOnly = True
        btnSubmit.Enabled = False
        lblStatus.Text = ""
        username = Request.QueryString("username")
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        End If
        lbluserName.Text = username
    End Sub

    Protected Sub cmbTickerId_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbTickerId.TextChanged
        txtTickerDesc.Text = ""
        Dim dt As New DataTable
        dt = objsyscon.getedata("SELECT * FROM TICKER WHERE TickerId = " & cmbTickerId.Text & "")
        If dt.Rows.Count > 0 Then
            txtTickerDesc.Text = dt.Rows(0).Item("TickerName")
        End If
        lblStatus.Text = ""
        txtTickerDesc.ReadOnly = True
        btnSubmit.Enabled = False
    End Sub

    Protected Sub BtnChange_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnChange.Click
        txtTickerDesc.ReadOnly = False
        btnSubmit.Enabled = True
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        'If (txtTickerDesc.ReadOnly = False And btnSubmit.Enabled = True) Then
        'End If
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            objsyscon.updatedata("UPDATE Ticker set TickerName = '" & Trim(txtTickerDesc.Text) & "' WHERE TickerId = " & Trim(cmbTickerId.Text) & "")
            lblStatus.Text = "Record Updated Sucessfully..!!"
            btnSubmit.Enabled = False
            Response.Redirect("Ticker_Update.aspx?username=" & username)
        End If
    End Sub

    Protected Sub BtnBackMain_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnBackMain.Click
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            Response.Redirect("Admin_Panel.aspx?username=" & username)
        End If
    End Sub
End Class
