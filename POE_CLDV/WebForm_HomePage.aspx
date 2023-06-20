<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_HomePage.aspx.cs" Inherits="POE_CLDV.WebForm_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 358px;
        }
    </style>
</head>
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Label ID="Label1" runat="server" Text="Domingo Roof Works" Font-Size="X-Large"></asp:Label>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnJobCards" runat="server" OnClick="btnJobCards_Click" Text="Job Cards" Width="119px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnDailyRate" runat="server" Text="Daily Rate" Width="119px" OnClick="btnDailyRate_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnInvoice" runat="server" Text="Invoice" Width="119px" OnClick="btnInvoice_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnEmployee" runat="server" Text="Employee" Width="118px" OnClick="btnEmployee_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
