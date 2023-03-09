<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="WebApplication3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align: center">
                <h3>ABC BUS ONLINE BOOKING & TICKETING SYSTEM</h3>
                <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="btnControl" runat="server" Text="Postback" />
            </div>
            
            <br /><br />

            <table style="width: 100%"; border="1">
                <!----- Calendar ----->
                <tr>
                    <td class="auto-style3" style="text-align: right">Date   :</td>
                    <td class="auto-style3">
                        <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                        <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <!----- Adult ----->
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblAdult" runat="server" Text="Adult :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdult" type="number" min="1" runat="server">1</asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <!----- Child ----->
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblChild" runat="server" Text="Child :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtChild" type="number" min="1" runat="server">1</asp:TextBox>
                    </td>
                    <td></td>
                </tr>

                <!----- From ----->
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblFrom" runat="server" Text="From :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlFrom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                            <asp:ListItem>Hentian Duta</asp:ListItem>
                            <asp:ListItem>Hentian Putra</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>

                <!----- Destination ----->
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblDestination" runat="server" Text="Destination :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                            <asp:ListItem>Butterworth</asp:ListItem>
                            <asp:ListItem>Seremban</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>

                <!----- Ticket Price ----->
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblPrice" runat="server" Text="Ticket Price :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                
            </table>
             <!----- Error Message ----->
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <br />

            <!----- Button Booking ----->
            <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" onClientClick="javascript:alert('You are now will UseSubmitBehavior directed ToolTip EnableTheming booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx" />
            &nbsp&nbsp
            <!----- Button Cancel ----->
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" onMouseOver ="this.value='Click if you confirm to reset selection'" OnMouseOut ="this.value='Cancel'" OnClick="btnCancel_Click"/>
        </div>
    </form>

</body>
</html>
