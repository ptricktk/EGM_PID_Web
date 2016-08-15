<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Desktop.Master" CodeBehind="Projectlifecycle.aspx.vb" Inherits="PID_web.Projectlifecycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBigImage" runat="server">
    <asp:Table runat="server" ID="tbleBigImage" BackImageUrl="~/Images/Projectlifecycle-stub.jpg" Width="100%" CellPadding="0" CellSpacing="0">
        
        <asp:TableRow Height="400">
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="backColorOpacity" Height="10">
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="backColorOpacity">
            <asp:TableCell HorizontalAlign="Center" CssClass="projectTitel"><asp:Label runat="server" ID="titelProject" Text="TITEL VAN PROJECT"></asp:Label></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="backColorOpacity">
            <asp:TableCell HorizontalAlign="Center" ForeColor="White"><asp:Label runat="server" ID="titelIntroPlantoelichting" Text="intro van plantoelichting"></asp:Label></asp:TableCell>
        </asp:TableRow>
        <asp:TableFooterRow CssClass="backColorOpacity" Height="15">
            <asp:TableCell></asp:TableCell>
        </asp:TableFooterRow>
    </asp:Table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphInfo" runat="server">

    <asp:Table runat="server" ID="tbleInfo" CellPadding="0" CellSpacing="0">
        <asp:TableHeaderRow Height="10"></asp:TableHeaderRow>
        <asp:TableRow Height="40" HorizontalAlign="Center">
            <asp:TableCell RowSpan="2">
                &nbsp;
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectAlgemeen" NavigateUrl="#algemeen" Text="ALGEMEEN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectIntern" NavigateUrl="#intern" Text="INTERN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectExtern" NavigateUrl="#extern" Text="EXTERN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectIntranet" NavigateUrl="#intranet" Text="INTRANET"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectKosten" NavigateUrl="#kosten" Text="KOSTEN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectKengetallen" NavigateUrl="#kengetallen" Text="KENGETALLEN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell Width="120">
                <asp:HyperLink runat="server" ID="lnkProjectGebouwSpecificaties" NavigateUrl="#algemeen" Text="GEBOUW SPECIFICATIES"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell RowSpan="2">
                &nbsp;
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectAudits" NavigateUrl="#audits" Text="AUDITS"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectWerkderden" NavigateUrl="#werkderden" Text="WERK DERDEN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectKlachten" NavigateUrl="#klachten" Text="KLACHTEN"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectDuurzaamheid" NavigateUrl="#duurzaamheid" Text="DUURZAAMHEID"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectStartbijeenkomst" NavigateUrl="#starbijeenkomst" Text="START BIJEENKOMST"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectEvaluatiebijeenkomst" NavigateUrl="#evaluatiebijeenkomst" Text="EVALUATIE BIJEENKOMST"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell>
                <asp:HyperLink runat="server" ID="lnkProjectBIM" NavigateUrl="#bim" Text="BIM"></asp:HyperLink>
            </asp:TableCell>
            <asp:TableCell RowSpan="2">
                &nbsp;
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableFooterRow Height="10">

        </asp:TableFooterRow>
    </asp:Table>
    <asp:table runat="server" Width="100%" CellPadding="0" CellSpacing="0">
        <asp:TableRow CssClass="backColorOpacity" ForeColor="White" Height="40">
            <asp:TableCell runat="server" ID="lifecycleCell0"></asp:TableCell>
            <asp:TableCell runat="server" ID="lifecycleCell1" Width="80" HorizontalAlign="center">signaal</asp:TableCell>
            <asp:TableCell runat="server" ID="lifecycleCell2" Width="80" HorizontalAlign="center">prospect</asp:TableCell>
            <asp:TableCell runat="server" ID="lifecycleCell3" Width="80" HorizontalAlign="center">project</asp:TableCell>
            <asp:TableCell runat="server" ID="lifecycleCell4" Width="80" HorizontalAlign="center">archief</asp:TableCell>
            <asp:TableCell runat="server" ID="lifecycleCell5"></asp:TableCell>
        </asp:TableRow>
    </asp:table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphContent" runat="server">
<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="algemeen"></a>ALGEMEEN
    </asp:TableCell>
</asp:TableHeaderRow>
<asp:TableRow HorizontalAlign="Left">
    <asp:TableCell>
        &nbsp;
    </asp:TableCell>
    <asp:TableCell>
        <asp:Table runat="server" ID="tbleProjectAlgemeen" Width="100%">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" CssClass="projectSectieSubTitel">BENAMING EN LOCATIE</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    roep-naam
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblRoepnaam" Text="roep-naam"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    wijk/plangebied
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblWijkPlangebied" Text="wijk/plangebied"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="projectInfoTitel">
                    externe-naam
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblExterneNaam" Text="externe-naam"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel">
                    adres
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Label runat="server" ID="lblAdres" Text="adres (straat + nummer)"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="projectInfoTitel">
                    cluster-naam
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblClusternaam" Text="cluster-naam"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel">
                    postcode
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Label runat="server" ID="lblPostcode" Text="postcode (0000XX)"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="projectInfoTitel">
                    commerciële-naam
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblCommercieleNaam" Text="commerciele-naam"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel">
                    plaats
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Label runat="server" ID="lblPlaats" Text="plaats"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="projectInfoTitel">
                    commerciële naam UK
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblCommercieleNaamUK" Text="commerciele-naam-UK"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel">
                    land
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Label runat="server" ID="lblLand" Text="land"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" Height="20"></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell ColumnSpan="6" CssClass="projectSectieSubTitel">VERWERVING, STATUS EN SPECIFICATIES</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    project status
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblStatusProject" Text="status"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    marktcategorie
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblMarktcategorie" Text="marktcategorie"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    project fase
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblProjectFase" Text="fase"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    commerciële categorie
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblCommercieleCategorie" Text="commerciële categorie"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    datum prospect
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblDatumProspect" Text="datum prosect"></asp:Label> - <asp:Label runat="server" ID="lblProspectnummer" Text="prospect"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    projectsoort
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblProjectSoort" Text="projectsoort"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    datum project
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblDatumProject" Text="datum project"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    opdrachtsoort
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblOpdrachtsoort" Text="opdrachtsoort"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    vervolg op
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblVervolgOp" Text="vervolg op"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    verwervingswijze
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblVerwervingswijze" Text="verwervingswijze"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    opdrachtsom excl. BTW
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblOpdrachtsom" Text="opdrachtsom"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    honorariumafspraak
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblHonorariumafspraak" Text="honorarium"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    plantoelichting / omvang initiatief
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <div style="max-height:125px; overflow:hidden;">
                        <asp:Label runat="server" ID="lblPlantoelichting" Text="plantoelichting"></asp:Label>
                    </div>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    project specificaties
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <div style="max-height:125px; overflow:hidden;">
                    <asp:Label runat="server" ID="lblProjectSpecificaties" Text="projectspecificaties"></asp:Label>
                    </div>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" Height="20"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" CssClass="projectSectieSubTitel">TIJDS-, FASERINGSASPECTEN EN HIGHLIGHTS</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    ontwerpen 
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblOntwerpenStart" Text="ontwerp start"></asp:Label> - <asp:Label runat="server" ID="lblOntwerpenEind" Text="ontwerp eind"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    1e paal
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblEerstePaal" Text="1e paal"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    SO fase
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblSOstart" Text="SO start"></asp:Label> - <asp:Label runat="server" ID="lblSOeind" Text="SO eind"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    hoogste punt
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblHoogstePunt" Text="hoogste punt"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    VO fase
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblVOstart" Text="VO start"></asp:Label> - <asp:Label runat="server" ID="lblVOeind" Text="VO eind"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    oplever datum
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblOpleverdatum" Text="opleverdatum"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    DO fase
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblDOstart" Text="DO start"></asp:Label> - <asp:Label runat="server" ID="lblDOeind" Text="DO eind"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    opening
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblOpening" Text="opening"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    technisch ontwerp
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblTechnischOntwerpStart" Text="technisch ontwerp start"></asp:Label> - <asp:Label runat="server" ID="lblTechnischOntwerpEind" Text="technisch ontwerp eind"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    uitvoering
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblUitvoeringStart" Text="uitvoering start"></asp:Label> - <asp:Label runat="server" ID="lblUitvoeringEind" Text="uitvoering eind"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:TableCell>
</asp:TableRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="intern"></a>INTERN
    </asp:TableCell>
</asp:TableHeaderRow>
<asp:TableRow HorizontalAlign="Left">
    <asp:TableCell>
        &nbsp;
    </asp:TableCell>
    <asp:TableCell>
        <asp:Table runat="server" ID="tbleProjectIntern" Width="100%">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" CssClass="projectSectieSubTitel">EGM GROEPSLEIDING (GL) EN PROJECTLEIDING (PL)</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    team
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblTeam" Text="team"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    groep
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblGroep" Text="groep"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    (project) architect
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblProjectArchitect" Text="projectarchitect"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    groepsmanager
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblGroepsManager" Text="groepsmanager"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    (project) coördinator
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblProjectCoordinator" Text="project coordinator"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    groepsarchitect
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblGroepsArchitect" Text="groepsarchitect"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    bewaker/archivaris 1 
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblBewaker1" Text="bewaker/archivaris"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    bewaker/archivaris 2 
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblBewaker2" Text="bewaker/archivaris"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" Height="20"></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell ColumnSpan="6" CssClass="projectSectieSubTitel">SAMENSTELLINGEN</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    architecten/onwerpers
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblArchitectenOntwerpers" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    interieurarchitecten
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblInterieurArchitecten" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    coördinatoren
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblCoordinatoren" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150" VerticalAlign="Top">
                    opnemen in persoonsprofiel
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblPersoonsprofielen" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel" VerticalAlign="Top">
                    projectteam
                </asp:TableCell>
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label runat="server" ID="lblProjectteam" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:TableCell>
</asp:TableRow>
</asp:Table>


<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="extern"></a>EXTERN
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="intranet"></a>INTRANET
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="kosten"></a>KOSTEN
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="kengetallen"></a>KENGETALLEN
    </asp:TableCell>
</asp:TableHeaderRow>
<asp:TableRow HorizontalAlign="Left">
    <asp:TableCell>
        &nbsp;
    </asp:TableCell>
    <asp:TableCell>
        <asp:Table runat="server" ID="tbleProjectKengetallen" Width="100%">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6" CssClass="projectSectieSubTitel">OMVANG</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="200" CssClass="projectInfoTitel">
                    terreinoppervlakte
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblTerreinOppervlakte" Text="terreinoppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="200">
                    bruto vloeroppervlakte alg. voorzieningen
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblBVOalgemeneVoorzieningen" Text="BVO algemene voorzieningen"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    bebouwd terreinoppervlakte
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblBebouwdTerreinOppervlakte" Text="bebouwd terreinoppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    bruto vloeroppervlakte eenheden
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblBVOeenheden" Text="BVO eenheden"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    bruto inhoud
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblBrutoInhoud" Text="bruto inhoud"></asp:Label> m<sup>3</sup>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    netto inhoud
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblNettoInhoud" Text="netto inhoud"></asp:Label> m<sup>3</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    bruto vloeroppervlakte (BVO)
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblBVO" Text="BVO"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    netto vloeroppervlakte (NVO)
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblNVO" Text="NVO"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    aantal parkeerplaatsen
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblAantalParkeerplaatsen" Text="aantal parkeerplaatsen"></asp:Label> stuks
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    gebruikersoppervlakte
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblGebruikersoppervlakte" Text="gebruikersoppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    aantal bouwlagen
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblAantalBouwlagen" Text="aantal bouwlagen"></asp:Label> stuks
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    verhuurbare oppervlakte
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblVerhuurbareOppervlakte" Text="verhuurbareoppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    gebouwhoogte
                </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:Label runat="server" ID="lblGebouwhoogte" Text="gebouwhoogte"></asp:Label> m
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    parkeeroppervlakte
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblparkeerOppervlakte" Text="parkeeroppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    
                </asp:TableCell>
                <asp:TableCell Width="200">
                    
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    geveloppervlakte
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblGevelOppervlakte" Text="geveloppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    
                </asp:TableCell>
                <asp:TableCell Width="200">
                    
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    beganegrondoppervlakte
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblBeganegrondOppervlakte" Text="beganegrond oppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    
                </asp:TableCell>
                <asp:TableCell Width="200">
                    
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    dakoppervlakte
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblDakOppervlakte" Text="dakoppervlakte"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="150" CssClass="projectInfoTitel">
                    
                </asp:TableCell>
                <asp:TableCell Width="200">
                    
                </asp:TableCell>
                <asp:TableCell Width="30">&nbsp;</asp:TableCell>
                <asp:TableCell CssClass="projectInfoTitel" Width="150">
                    FSI factor (FloorSpace Index)
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="lblFloorSpaceIndex" Text="floor space index"></asp:Label> m<sup>2</sup>
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:TableCell>
</asp:TableRow>



</asp:Table>

<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="gebouwspecificaties"></a>GEBOUW SPECIFICATIES
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="audits"></a>AUDITS
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="werkderden"></a>WERK DERDEN
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="klachten"></a>KLACHTEN
    </asp:TableCell>
</asp:TableHeaderRow>


</asp:Table>

<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="duurzaamheid"></a>DUURZAAMHEID
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="startbijeenkomst"></a>START BIJKEENKOMST
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="WhiteSmoke" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="evaluatiebijeenkomst"></a>EVALUATIE BIJEENKOMST
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

<asp:Table runat="server" BackColor="White" Width="100%">
<asp:TableHeaderRow Height="30">
    <asp:TableCell Width="200">&nbsp;</asp:TableCell>
    <asp:TableCell CssClass="projectSectieTitel">
        <a name="bim"></a>BIM
    </asp:TableCell>
</asp:TableHeaderRow>
</asp:Table>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
