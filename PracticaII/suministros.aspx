<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suministros.aspx.cs" Inherits="PracticaII.suministros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Css/boton.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="143px" Width="207px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="CodigoPieza" HeaderText="CodigoPieza" SortExpression="CodigoPieza" />
                <asp:BoundField DataField="IdProveedor" HeaderText="IdProveedor" SortExpression="IdProveedor" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:practica2ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:practica2ConnectionString6.ProviderName %>" SelectCommand="SELECT [CodigoPieza], [IdProveedor], [Precio] FROM [suministros]" InsertCommand="
INSERT INTO suministros(CodigoPieza, IdProveedor, Precio) VALUES (@codigo,@id,@precio)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Tcodigo" Name="codigo" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tid" Name="id" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tprecio" Name="precio" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <p>
            Codigo:
            <asp:TextBox ID="Tcodigo" runat="server"></asp:TextBox>
        </p>
        <p>
            ID:
            <asp:TextBox ID="Tid" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        <p>
            Precio:<asp:TextBox ID="Tprecio" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" CssClass="button button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
    </form>
</body>
</html>
