<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRental.aspx.cs" Inherits="EsrefcanTuranMidterm2.frmRental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="rentID" DataSourceID="sqlRental" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="rentID" InsertVisible="False" SortExpression="rentID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("rentID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("rentID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="carID" HeaderText="carID" SortExpression="carID" />
                    <asp:BoundField DataField="customerID" HeaderText="customerID" SortExpression="customerID" />
                    <asp:BoundField DataField="rentalDate" HeaderText="rentalDate" SortExpression="rentalDate" />
                    <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="returnDate" HeaderText="returnDate" SortExpression="returnDate" />
                    <asp:BoundField DataField="extraAmount" HeaderText="extraAmount" SortExpression="extraAmount" />
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
        &nbsp;<table>
            <tr><td class="auto-style1">Car ID: </td><td class="auto-style1">
                <asp:DropDownList ID="ddlCarID" runat="server" AutoPostBack="True" DataSourceID="sqlCar" DataTextField="carID" DataValueField="carID">
                </asp:DropDownList>
                </td>
            </tr>
            <tr><td>Customer ID: </td><td>
                <asp:DropDownList ID="ddlCustomerID" runat="server" AutoPostBack="True" DataSourceID="sqlCustomer" DataTextField="customerID" DataValueField="customerID">
                </asp:DropDownList>
                </td>
            </tr>
            <tr><td>Rental Date: </td><td>
                <asp:Calendar ID="Calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
                </td>
            </tr>
            <tr><td>Expected Days of Rental: </td><td><asp:TextBox ID="txtDays" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Amount of Rental: </td><td><asp:TextBox ID="txtAmount" runat="server"></asp:TextBox></td>
            </tr>
            </table>
            <asp:Button ID="btnRent" runat="server" OnClick="btnRent_Click" Text="Rent" />
            <br />
            <asp:SqlDataSource ID="sqlRental" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" DeleteCommand="DELETE FROM [tblRent] WHERE [rentID] = ?" InsertCommand="INSERT INTO [tblRent] ([carID], [customerID], [rentalDate], [days], [amount], [returnDate], [extraAmount]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblRent]" UpdateCommand="UPDATE [tblRent] SET [carID] = ?, [customerID] = ?, [rentalDate] = ?, [days] = ?, [amount] = ?, [returnDate] = ?, [extraAmount] = ? WHERE [rentID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="rentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="ddlCarID" Name="carID" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="ddlCustomerID" Name="customerID" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="Calendar" Name="rentalDate" PropertyName="SelectedDate" Type="DateTime" />
                    <asp:ControlParameter ControlID="txtDays" Name="days" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtAmount" Name="amount" PropertyName="Text" Type="Decimal" />
                    <asp:Parameter Name="returnDate" Type="DateTime" />
                    <asp:Parameter Name="extraAmount" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="carID" Type="Int32" />
                    <asp:Parameter Name="customerID" Type="Int32" />
                    <asp:Parameter Name="rentalDate" Type="DateTime" />
                    <asp:Parameter Name="days" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Decimal" />
                    <asp:Parameter Name="returnDate" Type="DateTime" />
                    <asp:Parameter Name="extraAmount" Type="Decimal" />
                    <asp:Parameter Name="rentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlCar" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCars]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCustomers]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
