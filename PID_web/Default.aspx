<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Desktop.Master" CodeBehind="Default.aspx.vb" Inherits="PID_web._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBigImage" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphInfo" runat="server">
    <asp:Table runat="server" ID="tbleInfo" CellPadding="0" CellSpacing="0">
        <asp:TableHeaderRow Height="10"></asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
            <asp:TableCell>
                <asp:Table runat="server" ID="tblePIDzoek">
                    <asp:TableRow>
                        <asp:TableCell VerticalAlign="Bottom" Width="200">
                            <asp:TextBox runat="server" ID="txtZoekPID"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell RowSpan="2" Width="150">
                            <asp:RadioButtonList runat="server" ID="rbListStatus">
                                <asp:ListItem Text="alles"></asp:ListItem>
                                <asp:ListItem Text="lopend" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="afgesloten"></asp:ListItem>
                                <asp:ListItem Text="vervallen"></asp:ListItem>
                                <asp:ListItem Text="stilgelegd"></asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                        <asp:TableCell RowSpan="2">
                            <asp:RadioButtonList runat="server" ID="rbListFormulier">
                                <asp:ListItem Text="werk-derden"></asp:ListItem>
                                <asp:ListItem Text="klachten totaal" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="audits"></asp:ListItem>
                                <asp:ListItem Text="startbijeenkomst"></asp:ListItem>
                                <asp:ListItem Text="evaluatiebijeenkomst"></asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:CheckBox runat="server" ID="cbxinclusiefPlantoelichting" Text="zoek inclusief plantoelichting" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableFooterRow Height="10"></asp:TableFooterRow>
    </asp:Table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Table runat="server" ID="tbleContent" CellPadding="0" CellSpacing="0">
        <asp:TableHeaderRow Height="10"></asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
            <asp:TableCell BackColor="White">
                <asp:Table runat="server" ID="tbleResultaten"></asp:Table>
                <asp:GridView runat="server" ID="grdResultaten" AutoGenerateColumns="false" BorderStyle="None" BorderWidth="0" BorderColor="White" AllowSorting="true">
                    <Columns>
                        <asp:ImageField DataImageUrlField="groep" DataImageUrlFormatString="~/Images/egm_architecten_label_thumb.jpg" ItemStyle-Height="15" />
                        <asp:HyperLinkField Text="proj" DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/Projectlifecycle.aspx?id={0}" />
                        <asp:BoundField HeaderText="werknummer" DataField="projn" HeaderStyle-Font-Bold="true" ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="roepnaam" DataField="roepnaam" HeaderStyle-Font-Bold="true" ItemStyle-Width="250" HeaderStyle-HorizontalAlign="Left" SortExpression="" />
                        <asp:BoundField HeaderText="plaats" DataField="locplaats" HeaderStyle-Font-Bold="true" ItemStyle-Width="150" HeaderStyle-HorizontalAlign="Left" />
                        <asp:BoundField HeaderText="cluster" DataField="clnaam" HeaderStyle-Font-Bold="true" ItemStyle-Width="100" HeaderStyle-HorizontalAlign="Left" />
                       <asp:BoundField HeaderText="lifecycle" DataField="statusProj" HeaderStyle-Font-Bold="true" ItemStyle-Width="120" headerstyle-HorizontalAlign="Left" />
                    </Columns>
                </asp:GridView>
            </asp:TableCell>
            <asp:TableCell>
                &nbsp;
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableFooterRow Height="10"></asp:TableFooterRow>
    </asp:Table>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphFooter" runat="server">
</asp:Content>
