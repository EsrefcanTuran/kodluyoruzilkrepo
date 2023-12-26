<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCustomer.aspx.cs" Inherits="EsrefcanTuranMidterm2.frmCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdCustomer" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="customerID" DataSourceID="sqlCustomer" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="customerID" InsertVisible="False" SortExpression="customerID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("customerID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("customerID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
            <asp:SqlDataSource ID="sqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [customerID] = ?" InsertCommand="INSERT INTO [tblCustomers] ([customerName], [address], [phone], [email]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCustomers]" UpdateCommand="UPDATE [tblCustomers] SET [customerName] = ?, [address] = ?, [phone] = ?, [email] = ? WHERE [customerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="customerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtCustomerName" Name="customerName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAddress" Name="address" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPhone" Name="phone" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="customerName" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="customerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <table>
            <tr><td>Customer Name: </td><td><asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Address: </td><td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Phone: </td><td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Email: </td><td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            </table>
            <asp:Button ID="btnAddCustomer" runat="server" OnClick="btnAddCustomer_Click" Text="Add New Customer" />
        </div>
    </form>
</body>
</html>
