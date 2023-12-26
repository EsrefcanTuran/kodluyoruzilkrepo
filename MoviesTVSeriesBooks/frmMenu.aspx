<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMenu.aspx.cs" Inherits="EsrefcanTuranMidterm2.menuRental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <h3>Rent a Car</h3>
            <asp:Menu ID="menRent" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/frmCustomer.aspx" Text="Customers" Value="Customers"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/frmCar.aspx" Text="Cars" Value="Cars"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/frmRental.aspx" Text="Rental" Value="Rental"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/frmReturn.aspx" Text="Return" Value="Return"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/frmCarTurnoverSummary.aspx" Text="CarTurnoverSummary" Value="CarTurnoverSummary"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/frmCustomerTurnoverSummary.aspx" Text="CustomerTurnoverSummary" Value="CustomerTurnoverSummary"></asp:MenuItem>
            </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        </div>
        </div>
    </form>
</body>
</html>
