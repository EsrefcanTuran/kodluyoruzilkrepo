<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmReturn.aspx.cs" Inherits="EsrefcanTuranMidterm2.frmReturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="detReturn" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="sqlReturn" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="rentID" HeaderText="rentID" InsertVisible="False" SortExpression="rentID" />
                    <asp:BoundField DataField="customerID" HeaderText="customerID" InsertVisible="False" SortExpression="customerID" />
                    <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                    <asp:BoundField DataField="carID" HeaderText="carID" InsertVisible="False" SortExpression="carID" />
                    <asp:BoundField DataField="plate" HeaderText="plate" SortExpression="plate" />
                    <asp:BoundField DataField="rentalDate" HeaderText="rentalDate" SortExpression="rentalDate" />
                    <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="returnDate" HeaderText="returnDate" SortExpression="returnDate" />
                    <asp:BoundField DataField="extraAmount" HeaderText="extraAmount" SortExpression="extraAmount" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="sqlReturn" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [qryCarRentalInfo]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlRent" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" DeleteCommand="DELETE FROM [tblRent] WHERE [rentID] = ?" InsertCommand="INSERT INTO [tblRent] ([rentID], [carID], [customerID], [rentalDate], [days], [amount], [returnDate], [extraAmount]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblRent] WHERE ([rentID] = ?)" UpdateCommand="UPDATE [tblRent] SET [returnDate] = ?, [extraAmount] = ? WHERE [rentID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="rentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rentID" Type="Int32" />
                    <asp:Parameter Name="carID" Type="Int32" />
                    <asp:Parameter Name="customerID" Type="Int32" />
                    <asp:Parameter Name="rentalDate" Type="DateTime" />
                    <asp:Parameter Name="days" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Decimal" />
                    <asp:Parameter Name="returnDate" Type="DateTime" />
                    <asp:Parameter Name="extraAmount" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtRentID" Name="rentID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="Calendar" Name="returnDate" PropertyName="SelectedDate" Type="DateTime" />
                    <asp:ControlParameter ControlID="txtExtra" Name="extraAmount" PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="txtRentID" Name="rentID" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <table>
                <tr>
                    <td>Rent ID: </td><td>
                        <asp:TextBox ID="txtRentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Return Date: </td><td>
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
                <tr>
                    <td>Extra Amount: </td><td>
                        <asp:TextBox ID="txtExtra" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table><br />
            <asp:Button ID="btnUpdate" runat="server" Text="Button" OnClick="btnUpdate_Click" />
            <br />
        </div>
    </form>
</body>
</html>
