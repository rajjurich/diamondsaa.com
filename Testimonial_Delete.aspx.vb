Imports System.Data

Partial Class Testimonial_Delete
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            objsyscon.updatedata("DELETE FROM testimonial WHERE TestimonialId = " & Trim(cmbTestimonialId.Text) & "")
            lblStatus.Text = "Record Deleted Sucessfully..!!"
            Response.Redirect("Testimonial_Details.aspx?username=" & username)
        End If
    End Sub

    Protected Sub cmbTestimonialId_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbTestimonialId.TextChanged
        txtTestimonial.Text = ""
        Dim dt As New DataTable
        dt = objsyscon.getedata("SELECT * FROM testimonial WHERE TestimonialId = " & cmbTestimonialId.Text & "")
        If dt.Rows.Count > 0 Then
            txtTestimonial.Text = dt.Rows(0).Item("Testimonial")
        End If
        lblStatus.Text = ""
        txtTestimonial.ReadOnly = True
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable
        Dim i As Integer
        If Page.IsPostBack = False Then
            dt = objsyscon.getedata("select * from testimonial order by TestimonialId")
            If dt.Rows.Count > 0 Then
                cmbTestimonialId.Items.Clear()
                For i = 0 To dt.Rows.Count - 1
                    cmbTestimonialId.Items.Add(dt.Rows(i).Item("TestimonialId"))
                Next
            End If

            Dim dtDesc As New DataTable
            dtDesc = objsyscon.getedata("SELECT * FROM testimonial WHERE TestimonialId = " & cmbTestimonialId.Text & "")
            If dtDesc.Rows.Count > 0 Then
                txtTestimonial.Text = dtDesc.Rows(0).Item("Testimonial")
            End If

        End If
        txtTestimonial.ReadOnly = True
        lblStatus.Text = ""
        username = Request.QueryString("username")
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        End If
        lbluserName.Text = username
    End Sub

   
End Class
