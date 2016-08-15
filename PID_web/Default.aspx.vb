
Public Class _Default
    Inherits System.Web.UI.Page

    Private pidProjecten As ProjectInformatieDatabase.Projecten
    Private azurePidProjecten As New ProjectinformatieData

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pidProjecten = New ProjectInformatieDatabase.Projecten

        If Not (Page.IsPostBack) Then
            '    _DisplayResults(pidProjecten.getMijnProjecten("patrick tak").Tables(0))
            Response.Write(azurePidProjecten._GetData().Tables(0).Rows.Count.ToString & " records is azure db")
        End If

    End Sub



    Private Sub _DisplayResults(projecten As DataTable)

        Dim row As TableRow
        Dim cell As TableCell

        row = New TableRow

        cell = New TableCell
        cell.Width = 25
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "lnk"
        cell.Width = 30
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "werknummer"
        cell.Font.Bold = True
        cell.Width = 50
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "roepnaam"
        cell.Font.Bold = True
        cell.Width = 200
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "externe-naam"
        cell.Font.Bold = True
        cell.Width = 200
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "plaats"
        cell.Font.Bold = True
        cell.Width = 150
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "cluster"
        cell.Font.Bold = True
        cell.Width = 50
        row.Cells.Add(cell)

        cell = New TableCell
        cell.Text = "lifecycle"
        cell.Font.Bold = True
        cell.Width = 50
        row.Cells.Add(cell)


        grdResultaten.DataSource = projecten
        grdResultaten.DataBind()
    End Sub
End Class