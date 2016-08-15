Imports System.Data
Imports System.Data.SqlClient

Public Class ProjectinformatieData

    Private AzureConnection As New SqlConnection("Server=tcp:egmprojecten.database.windows.net,1433;Initial Catalog=egmprojecten;Persist Security Info=False;User ID=dbServerAdmin;Password=8w#8#gQAp@U1J8@i;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")

    Public Function _GetData() As DataSet
        Dim pidDataSet As New DataSet("PID_data")
        Dim dtAlgemeen As New DataTable("Algemeen")

        Dim cmd As New SqlCommand("SELECT * FROM algemeen", AzureConnection)

        Dim da As New SqlDataAdapter(cmd)


        Try
            AzureConnection.Open()

            da.Fill(dtAlgemeen)
            pidDataSet.Tables.Add(dtAlgemeen)
        Catch ex As Exception

        Finally
            AzureConnection.Close()
        End Try

        Return pidDataSet
    End Function

End Class
