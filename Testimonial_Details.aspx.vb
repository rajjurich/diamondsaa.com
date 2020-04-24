Imports System.Data

Partial Class Testimonial_Details
    Inherits System.Web.UI.Page
    Dim objsyscon As New Systemcon
    Dim username As String

    Protected Sub BtnApprove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnApprove.Click
        Dim atLeastOneRowDeleted As Boolean = False
        Dim i As Integer
        Dim dt As New DataTable
        'If Page.IsPostBack = False Then
        For i = 0 To Testimonials.Rows.Count - 1
            'CheckBox cb = (CheckBox)row.FindControl("ProductSelector"); 
            ''''Dim cb As CheckBox

            ''''cb = Testimonials.FindControl("TestimonialSelector")
            Dim cb As CheckBox = CType(Testimonials.Rows(i).FindControl("TestimonialSelector"), CheckBox)
            If (cb.Checked) Then
                atLeastOneRowDeleted = True
                dt = objsyscon.getedata("SELECT TestimonialId FROM TESTIMONIAL WHERE AdminAppoval='N' and Testimonial = '" & Trim(Testimonials.Rows(i).Cells(1).Text) & "'")
                If dt.Rows.Count > 0 Then
                    objsyscon.updatedata("UPDATE TESTIMONIAL set AdminAppoval='Y' WHERE TestimonialId = '" & Trim(dt.Rows(0).Item("TestimonialId")) & "'")
                    
                End If

            End If

        Next
        lblstatus.Text = "Testimonials approved successfully..!!"
        Response.Redirect("Testimonial_Details.aspx?username=" & username)
        'End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable
        If Page.IsPostBack = False Then
            dt = objsyscon.getedata("SELECT Testimonial FROM TESTIMONIAL WHERE AdminAppoval='N'")
            If dt.Rows.Count = 0 Then
                lblstatus.Text = "No more testimonials.."
                BtnApprove.Visible = False
                btnReject.Visible = False
            End If
        End If
        username = Request.QueryString("username")
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        End If
        lbluserName.Text = username
    End Sub

    Protected Sub BtnGoMain_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnGoMain.Click
        If username = "" Then
            Response.Redirect("http://diamondsaa.com/about.asp")
        Else
            Response.Redirect("Admin_Panel.aspx?username=" & username)
        End If
    End Sub

    Protected Sub btnReject_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReject.Click
        Dim atLeastOneRowDeleted As Boolean = False
        Dim i As Integer
        Dim dt As New DataTable
        'If Page.IsPostBack = False Then
        For i = 0 To Testimonials.Rows.Count - 1
            'CheckBox cb = (CheckBox)row.FindControl("ProductSelector"); 
            ''''Dim cb As CheckBox

            ''''cb = Testimonials.FindControl("TestimonialSelector")
            Dim cb As CheckBox = CType(Testimonials.Rows(i).FindControl("TestimonialSelector"), CheckBox)
            If (cb.Checked) Then
                atLeastOneRowDeleted = True
                dt = objsyscon.getedata("SELECT TestimonialId FROM TESTIMONIAL WHERE AdminAppoval='N' and Testimonial = '" & Trim(Testimonials.Rows(i).Cells(1).Text) & "'")
                If dt.Rows.Count > 0 Then
                    objsyscon.updatedata("DELETE FROM TESTIMONIAL WHERE TestimonialId = " & Trim(dt.Rows(0).Item("TestimonialId")) & "")
               End If

            End If

        Next
        lblstatus.Text = "Testimonials rejected successfully..!!"
        Response.Redirect("Testimonial_Details.aspx?username=" & username)
    End Sub

    Protected Sub Testimonials_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles Testimonials.RowDataBound
        '' ''Dim i As Integer
        '' ''Testimonials.Style.Add("word-break", "break-all")
        '' ''For i = 0 To Testimonials.Rows.Count - 1
        '' ''    Testimonials.Rows(i).Cells(1).Width = 50
        '' ''Next


        ''If (e.Row.RowType = DataControlRowType.DataRow) Then
        ''    Dim value As String
        ''    value = e.Row.Cells(1).Text
        ''    If Not (String.IsNullOrEmpty(value)) Then
        ''        e.Row.Cells(1).Text = value.Insert(value.Length / 500, " ")
        ''    End If


        ''End If
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            e.Row.Cells(1).Attributes.Add("style", "word-wrap:break-word;width:50%")
        End If


    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Response.Redirect("Testimonial_Delete.aspx?username=" & username)
    End Sub
End Class
