<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCustomerTurnoverSummary.aspx.cs" Inherits="EsrefcanTuranMidterm2.frmCustomerTurnoverSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="detCustomerTurnoverSummary" runat="server" AllowPaging="True" AutoGenerateRows="False" Caption="Customer Turnover Summary" CellPadding="4" DataKeyNames="customerID" DataSourceID="sqlCustomerTurnoverSummary" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Total Amount" HeaderText="Total Amount" SortExpression="Total Amount" />
                    <asp:BoundField DataField="customerID" HeaderText="customerID" InsertVisible="False" ReadOnly="True" SortExpression="customerID" />
                    <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="sqlCustomerTurnoverSummary" runat="server" ConnectionString="<%$ ConnectionStrings:RentACarConnectionString %>" ProviderName="<%$ ConnectionStrings:RentACarConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [qryCustomerTurnoverSummary]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
