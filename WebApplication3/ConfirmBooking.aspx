<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="WebApplication3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>ABC BUS BOOKING CONFIRMATION</h3>
            <p>You have confimed your booking with the following details:</p>
            <br />
            <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>
            <br />
            <p>Please make payment at our counter.</p>
        </div>
    </form>
</body>
</html>
