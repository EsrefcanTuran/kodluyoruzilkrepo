<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCar.aspx.cs" Inherits="EsrefcanTuranMidterm2.frmCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdCar" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="carID" DataSourceID="sqlCar" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="carID" InsertVisible="False" SortExpression="carID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("carID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("carID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                    <asp:BoundField DataField="plate" HeaderText="plate" SortExpression="plate" />
                    <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlCar" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" DeleteCommand="DELETE FROM [tblCars] WHERE [carID] = ?" InsertCommand="INSERT INTO [tblCars] ([model], [plate], [color]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCars]" UpdateCommand="UPDATE [tblCars] SET [model] = ?, [plate] = ?, [color] = ? WHERE [carID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="carID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtModel" Name="model" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPlate" Name="plate" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtColor" Name="color" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="plate" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="carID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <table>
            <tr><td>Model: </td><td><asp:TextBox ID="txtModel" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Plate: </td><td><asp:TextBox ID="txtPlate" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Color: </td><td><asp:TextBox ID="txtColor" runat="server"></asp:TextBox></td>
            </tr>
            </table>
            <asp:Button ID="btnAddCar" runat="server" OnClick="btnAddCar_Click" Text="Add New Car" />
        </div>
    </form>
</body>
</html>
