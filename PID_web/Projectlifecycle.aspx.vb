Public Class Projectlifecycle
    Inherits System.Web.UI.Page

    Dim pidProject As ProjectInformatieDatabase.Project

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim projectLifeCycleID As Integer = 13269

        If Not (Request.QueryString("id") Is Nothing) Then
            projectLifeCycleID = CInt(Request.QueryString("id").ToString)
        End If

        If Not (Page.IsPostBack) Then
            '_FillFormWithProjectData(projectLifeCycleID)
            _FillFormWithAzureProjectData(projectLifeCycleID)
        End If

    End Sub

    Private Sub _FillFormWithAzureProjectData(projectID As Integer)
        Dim azurepid As New ProjectinformatieData

        Dim dsWorkdata As New DataSet
        dsWorkdata = azurepid._GetData

        Dim algemeenRow As DataRow = dsWorkdata.Tables("algemeen").Rows(0)

        titelProject.Text = algemeenRow.Item("Roepnaam")
        If algemeenRow.Item("PlanToelichting").ToString.Length > 300 Then
            titelIntroPlantoelichting.Text = algemeenRow.Item("PlanToelichting").ToString.Remove(290) & "..."
        Else
            titelIntroPlantoelichting.Text = algemeenRow.Item("PlanToelichting").ToString
        End If

        _SetLifecycleCells(algemeenRow.Item("LifecycleStatus").ToString, algemeenRow.Item("ProjectFase").ToString)

        lblRoepnaam.Text = algemeenRow.Item("Roepnaam").ToString
        lblExterneNaam.Text = algemeenRow.Item("ExterneNaam").ToString
        lblClusternaam.Text = algemeenRow.Item("clusterNaam").ToString
        lblCommercieleNaam.Text = algemeenRow.Item("PublicitaireNaamNL").ToString
        lblCommercieleNaamUK.Text = algemeenRow.Item("PublicitaireNaamUK").ToString

        lblWijkPlangebied.Text = algemeenRow.Item("LocatieBouw").ToString
        lblAdres.Text = algemeenRow.Item("LocatieAdres").ToString
        lblPostcode.Text = algemeenRow.Item("LocatiePostcode").ToString
        lblPlaats.Text = algemeenRow.Item("LocatiePlaats").ToString
        lblLand.Text = algemeenRow.Item("LocatieLand").ToString

        lblStatusProject.Text = algemeenRow.Item("ProjectStatus").ToString
        lblProjectFase.Text = algemeenRow.Item("ProjectFase").ToString

        If Not IsDBNull(algemeenRow.Item("ProspectDatum")) Then
            lblDatumProspect.Text = CDate(algemeenRow.Item("ProspectDatum")).ToString("d")
        Else
            lblDatumProspect.Text = "-"
        End If

        lblProspectnummer.Text = algemeenRow.Item("Prospectnr").ToString
        If Not IsDBNull(algemeenRow.Item("ProjectDatum")) Then
            lblDatumProject.Text = CDate(algemeenRow.Item("ProjectDatum")).ToString("d")
        Else
            lblDatumProject.Text = "-"
        End If
        lblVervolgOp.Text = algemeenRow.Item("VervolgOp").ToString

        If Not IsDBNull(algemeenRow.Item("OpdrachtSom")) Then
            lblOpdrachtsom.Text = CDec(algemeenRow.Item("OpdrachtSom")).ToString("C")
        Else
            lblOpdrachtsom.Text = "-"
        End If

        lblPlantoelichting.Text = algemeenRow.Item("Plantoelichting").ToString

        lblMarktcategorie.Text = algemeenRow.Item("MarktCategorie").ToString
        lblCommercieleCategorie.Text = algemeenRow.Item("communicatieClass").ToString
        lblProjectSoort.Text = algemeenRow.Item("ProjectSoort").ToString
        lblOpdrachtsoort.Text = algemeenRow.Item("OpdrachtSoort").ToString
        lblVerwervingswijze.Text = algemeenRow.Item("VerwervingsType").ToString
        lblHonorariumafspraak.Text = algemeenRow.Item("HonorariumAfspraak").ToString

    End Sub

    Private Sub _FillFormWithProjectData(projectID As Integer)
        pidProject = New ProjectInformatieDatabase.Project(projectID)
        Dim showKengetallen As Boolean = True

        Dim dsWorkdata As New DataSet
        dsWorkdata = pidProject.getProject()

        Dim algemeenRow As DataRow = dsWorkdata.Tables("algemeen").Rows(0)
        Dim internRow As DataRow = dsWorkdata.Tables("intern").Rows(0)
        Dim kengetallenRow As DataRow
        If dsWorkdata.Tables("kengetallen").Rows.Count > 0 Then
            kengetallenRow = dsWorkdata.Tables("kengetallen").Rows(0)
        Else
            kengetallenRow = dsWorkdata.Tables("kengetallen").NewRow
            showKengetallen = False
        End If

        Dim projectSpec As DataTable = dsWorkdata.Tables("projectSpec")
        Dim projectTeam As DataTable = dsWorkdata.Tables("prTeam")
        Dim architecten As DataTable = dsWorkdata.Tables("prArch")
        Dim coordinatoren As DataTable = dsWorkdata.Tables("prCoord")
        Dim persoonsprofielen As DataTable = dsWorkdata.Tables("cvMED")
        Dim interieurArchitecten As DataTable = dsWorkdata.Tables("prIntArch")



        titelProject.Text = algemeenRow.Item("roepnaam")
        If algemeenRow.Item("plantoel").ToString.Length > 300 Then
            titelIntroPlantoelichting.Text = algemeenRow.Item("plantoel").ToString.Remove(290) & "..."
        Else
            titelIntroPlantoelichting.Text = algemeenRow.Item("plantoel").ToString
        End If

        _SetLifecycleCells(algemeenRow.Item("statusProj").ToString, algemeenRow.Item("faseProj").ToString)

        lblRoepnaam.Text = algemeenRow.Item("roepnaam").ToString
        lblExterneNaam.Text = algemeenRow.Item("extnaam").ToString
        lblClusternaam.Text = algemeenRow.Item("clNaam").ToString
        lblCommercieleNaam.Text = algemeenRow.Item("pubnaam").ToString
        lblCommercieleNaamUK.Text = algemeenRow.Item("pubnaamUK").ToString

        lblWijkPlangebied.Text = algemeenRow.Item("locBouw").ToString
        lblAdres.Text = algemeenRow.Item("locAdr").ToString
        lblPostcode.Text = algemeenRow.Item("locPC").ToString
        lblPlaats.Text = algemeenRow.Item("locPlaats").ToString
        lblLand.Text = algemeenRow.Item("locLand").ToString

        lblStatusProject.Text = algemeenRow.Item("statusProj").ToString
        lblProjectFase.Text = algemeenRow.Item("faseProj").ToString

        If Not IsDBNull(algemeenRow.Item("datumPros")) Then
            lblDatumProspect.Text = CDate(algemeenRow.Item("datumPros")).ToString("d")
        Else
            lblDatumProspect.Text = "-"
        End If

        lblProspectnummer.Text = algemeenRow.Item("prosn").ToString
        If Not IsDBNull(algemeenRow.Item("datumProj")) Then
            lblDatumProject.Text = CDate(algemeenRow.Item("datumProj")).ToString("d")
        Else
            lblDatumProject.Text = "-"
        End If
        lblVervolgOp.Text = algemeenRow.Item("projOrg").ToString

        If Not IsDBNull(algemeenRow.Item("opdSom")) Then
            lblOpdrachtsom.Text = CDec(algemeenRow.Item("opdSom")).ToString("C")
        Else
            lblOpdrachtsom.Text = "-"
        End If

        lblPlantoelichting.Text = algemeenRow.Item("plantoel").ToString

        lblMarktcategorie.Text = algemeenRow.Item("prClass").ToString
        lblCommercieleCategorie.Text = algemeenRow.Item("communicatieClass").ToString
        lblProjectSoort.Text = algemeenRow.Item("prSoort").ToString
        lblOpdrachtsoort.Text = algemeenRow.Item("opdSoort").ToString
        lblVerwervingswijze.Text = algemeenRow.Item("verwType").ToString
        lblHonorariumafspraak.Text = algemeenRow.Item("honafs").ToString

        For Each rw As DataRow In projectSpec.Rows
            lblProjectSpecificaties.Text += rw.Item("spec").ToString & "<br />"
        Next

        ' Tijdsaspecten uit kengetallen tabel
        If showKengetallen = True Then
            lblOntwerpenStart.Text = CDate(kengetallenRow.Item("stO")).ToString("d")
            lblOntwerpenEind.Text = CDate(kengetallenRow.Item("finO")).ToString("d")

            lblSOstart.Text = CDate(kengetallenRow.Item("stSO")).ToString("d")
            lblSOeind.Text = CDate(kengetallenRow.Item("finSO")).ToString("d")
            lblVOstart.Text = CDate(kengetallenRow.Item("stVO")).ToString("d")
            lblVOeind.Text = CDate(kengetallenRow.Item("finVO")).ToString("d")
            lblDOstart.Text = CDate(kengetallenRow.Item("stDO")).ToString("d")
            lblDOeind.Text = CDate(kengetallenRow.Item("finDO")).ToString("d")

            lblTechnischOntwerpStart.Text = CDate(kengetallenRow.Item("stBV")).ToString("d")
            lblTechnischOntwerpEind.Text = CDate(kengetallenRow.Item("finBV")).ToString("d")
            lblUitvoeringStart.Text = CDate(kengetallenRow.Item("stBouw")).ToString("d")
            lblUitvoeringEind.Text = CDate(kengetallenRow.Item("finBouw")).ToString("d")

            lblEerstePaal.Text = CDate(kengetallenRow.Item("paal")).ToString("d")
            lblHoogstePunt.Text = CDate(kengetallenRow.Item("hpunt")).ToString("d")
            lblOpleverdatum.Text = CDate(kengetallenRow.Item("oplev")).ToString("d")
            lblOpening.Text = CDate(kengetallenRow.Item("opening")).ToString("d")
        Else
            lblOntwerpenStart.Text = "-"
            lblOntwerpenEind.Text = "-"

            lblSOstart.Text = "-"
            lblSOeind.Text = "-"
            lblVOstart.Text = "-"
            lblVOeind.Text = "-"
            lblDOstart.Text = "-"
            lblDOeind.Text = "-"

            lblTechnischOntwerpStart.Text = "-"
            lblTechnischOntwerpEind.Text = "-"
            lblUitvoeringStart.Text = "-"
            lblUitvoeringEind.Text = "-"

            lblEerstePaal.Text = "-"
            lblHoogstePunt.Text = "-"
            lblOpleverdatum.Text = "-"
            lblOpening.Text = "-"
        End If


        ' Intern
        lblGroep.Text = internRow.Item("groep").ToString
        lblGroepsManager.Text = internRow.Item("GLm").ToString
        lblGroepsArchitect.Text = internRow.Item("GLa").ToString

        lblTeam.Text = internRow.Item("team").ToString
        lblProjectArchitect.Text = internRow.Item("architect").ToString
        lblProjectCoordinator.Text = internRow.Item("coord").ToString
        lblBewaker1.Text = internRow.Item("bewaker1").ToString
        lblBewaker2.Text = internRow.Item("bewaker2").ToString

        For Each rw As DataRow In architecten.Rows
            lblArchitectenOntwerpers.Text += rw.Item("med").ToString & "<br/>"
        Next
        For Each rw As DataRow In coordinatoren.Rows
            lblCoordinatoren.Text += rw.Item("med").ToString & "<br/>"
        Next
        For Each rw As DataRow In interieurArchitecten.Rows
            lblInterieurArchitecten.Text += rw.Item("med").ToString & "<br/>"
        Next
        For Each rw As DataRow In projectTeam.Rows
            lblProjectteam.Text += rw.Item("med").ToString & "<br/>"
        Next

        For Each rw As DataRow In persoonsprofielen.Rows
            lblPersoonsprofielen.Text += rw.Item("med").ToString & " (" & rw.Item("rol").ToString & ")<br/>"
        Next




        ' Kengetallen
        If showKengetallen = True Then
            tbleProjectKengetallen.Visible = True

            lblTerreinOppervlakte.Text = CInt(kengetallenRow.Item("oppT")).ToString("#,#")
            lblBebouwdTerreinOppervlakte.Text = CInt(kengetallenRow.Item("oppB")).ToString("#,#")
            lblBrutoInhoud.Text = CInt(kengetallenRow.Item("inhB")).ToString("#,#")
            lblBVO.Text = CInt(kengetallenRow.Item("BVO")).ToString("#,#")
            lblAantalParkeerplaatsen.Text = CInt(kengetallenRow.Item("aantPark")).ToString("#,#")
            lblAantalBouwlagen.Text = CInt(kengetallenRow.Item("aantLagen")).ToString("#,#")
            lblGebouwhoogte.Text = CInt(kengetallenRow.Item("hoogteGeb")).ToString("#,#")

            lblBVOalgemeneVoorzieningen.Text = CInt(kengetallenRow.Item("bvoAlg")).ToString("#,#")
            lblBVOeenheden.Text = CInt(kengetallenRow.Item("BVOeenh")).ToString("#,#")
            lblNettoInhoud.Text = CInt(kengetallenRow.Item("inhN")).ToString("#,#")
            lblGebruikersoppervlakte.Text = CInt(kengetallenRow.Item("oppGeb")).ToString("#,#")
            lblVerhuurbareOppervlakte.Text = CInt(kengetallenRow.Item("oppVerh")).ToString("#,#")
            lblparkeerOppervlakte.Text = CInt(kengetallenRow.Item("oppPark")).ToString("#,#")
            lblGevelOppervlakte.Text = CInt(kengetallenRow.Item("oppGev")).ToString("#,#")
            lblBeganegrondOppervlakte.Text = CInt(kengetallenRow.Item("oppBG")).ToString("#,#")
            lblDakOppervlakte.Text = CInt(kengetallenRow.Item("oppDak")).ToString("#,#")
            lblFloorSpaceIndex.Text = CInt(kengetallenRow.Item("FSI")).ToString("#,#")
        Else
            tbleProjectKengetallen.Visible = False
        End If


    End Sub

    Private Sub _SetLifecycleCells(projectStatus As String, projectFase As String)

        Dim image As New Image
        image.ImageUrl = "~/Images/nextArrow.png"

        If projectStatus.ToLower.StartsWith("signaal") Then
            lifecycleCell0.BackColor = Drawing.Color.Black
            lifecycleCell1.BackColor = Drawing.Color.Black
            lifecycleCell1.Font.Bold = True
            lifecycleCell1.Font.Underline = True

            'lifecycleCell2.BackColor = Drawing.Color.Black
            'lifecycleCell3.BackColor = Drawing.Color.Black
            'lifecycleCell4.BackColor = Drawing.Color.Black
            'lifecycleCell5.BackColor = Drawing.Color.Black
        ElseIf projectStatus.ToLower.StartsWith("prospect") Then
            lifecycleCell0.BackColor = Drawing.Color.Black
            lifecycleCell1.BackColor = Drawing.Color.Black
            lifecycleCell2.BackColor = Drawing.Color.Black
            lifecycleCell2.Font.Bold = True
            lifecycleCell2.Font.Underline = True

            'lifecycleCell3.BackColor = Drawing.Color.Black
            'lifecycleCell4.BackColor = Drawing.Color.Black
            'lifecycleCell5.BackColor = Drawing.Color.Black
        ElseIf projectStatus.ToLower.StartsWith("project") Then
            If projectStatus.ToLower.Contains("lopend") Then

                lifecycleCell0.BackColor = Drawing.Color.Black
                lifecycleCell1.BackColor = Drawing.Color.Black
                lifecycleCell2.BackColor = Drawing.Color.Black
                lifecycleCell3.BackColor = Drawing.Color.Black
                lifecycleCell3.Font.Bold = True
                lifecycleCell3.Font.Underline = True
                'lifecycleCell4.BackColor = Drawing.Color.Black
                'lifecycleCell5.BackColor = Drawing.Color.Black

            Else

                lifecycleCell0.BackColor = Drawing.Color.Black
                lifecycleCell1.BackColor = Drawing.Color.Black
                lifecycleCell2.BackColor = Drawing.Color.Black
                lifecycleCell3.BackColor = Drawing.Color.Black
                lifecycleCell4.BackColor = Drawing.Color.DarkGray
                lifecycleCell4.Font.Bold = True
                lifecycleCell4.Font.Underline = True
                'lifecycleCell5.BackColor = Drawing.Color.Black

            End If
        Else
            lifecycleCell0.BackColor = Drawing.Color.Black
            lifecycleCell1.BackColor = Drawing.Color.Black
            lifecycleCell2.BackColor = Drawing.Color.Black
            lifecycleCell3.BackColor = Drawing.Color.Black
            lifecycleCell3.Font.Bold = True
            lifecycleCell3.Font.Underline = True
            'lifecycleCell4.BackColor = Drawing.Color.Black
            'lifecycleCell5.BackColor = Drawing.Color.Black

        End If

    End Sub

End Class