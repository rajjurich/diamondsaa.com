Imports System.Data

Partial Class Ticker_Delete
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable
        Dim i As Integer
        If Page.IsPostBack = False Then
            dt = objsyscon.getedata("select * from ticker order by TickerId")
            If dt.Rows.Count <> 0 Then
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
                'Else
                '    MsgBox("No Data to Display");
            End If


        End If
        txtTickerDesc.ReadOnly = True
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
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        ''If MsgBox("Are you sure that you want to delete the record..!!", MsgBoxStyle.OkCancel) = MsgBoxResult.Ok Then
        'End If
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            objsyscon.updatedata("DELETE FROM Ticker WHERE TickerId = " & Trim(cmbTickerId.Text) & "")
            lblStatus.Text = "Record Deleted Sucessfully..!!"
            Response.Redirect("Ticker_Details.aspx?username=" & username)
        End If
    End Sub
End Class
