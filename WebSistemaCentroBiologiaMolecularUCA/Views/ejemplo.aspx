<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ejemplo.aspx.cs" Inherits="WebSistemaCentroBiologiaMolecularUCA.Views.ejemplo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:BoundField DataField="Entregado" HeaderText="Entregado" SortExpression="Entregado" />
            <asp:BoundField DataField="Tipo_orden" HeaderText="Tipo_orden" SortExpression="Tipo_orden" />
            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            <asp:BoundField DataField="Baucher" HeaderText="Baucher" SortExpression="Baucher" />
            <asp:BoundField DataField="No_orden" HeaderText="No_orden" SortExpression="No_orden" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            <asp:BoundField DataField="Fecha_registra" HeaderText="Fecha_registra" SortExpression="Fecha_registra" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BiologiaConnectionString1 %>" SelectCommand="SELECT [Entregado], [Tipo_orden], [Observaciones], [Fecha], [Baucher], [No_orden], [Estado], [Fecha_registra] FROM [T_Orden]">
    </asp:SqlDataSource>
</form>
</asp:Content>
