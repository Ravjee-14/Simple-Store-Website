<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_Invoice.aspx.cs" Inherits="POE_CLDV.WebForm_Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            width: 89px;
        }
        .auto-style11 {
            width: 448px;
        }
        .auto-style13 {
            width: 220px;
        }
        .auto-style14 {
            width: 6px;
        }
        .auto-style16 {
            width: 195px;
        }
        .auto-style17 {
            width: 207px;
        }
    </style>
</head>
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Label ID="Label1" runat="server" Text="Invoice" Font-Size="X-Large"></asp:Label>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">Job Card Number</td>
                    <td colspan="2" rowspan="4">
                        <asp:TextBox ID="txtInvoiceJobCardNo" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" Width="101px" OnClick="btnRetrieve_Click" />
                    &nbsp;<asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" Width="101px" />
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="Return to Home Page" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">Job Card Number</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblJobCardNo" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style17" rowspan="10">
                        <asp:GridView ID="GridView_LoadRecord" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">Customer Details</td>
                    <td class="auto-style11">
                        <asp:GridView ID="GridView_CustomerDetails" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">Employee Allocated</td>
                    <td class="auto-style11">
                        <asp:GridView ID="GridView_Employee" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">Equipment &amp; Materials</td>
                    <td class="auto-style11">
                        <asp:GridView ID="GridView_Materials" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">Cost</td>
                    <td class="auto-style11">
                        <asp:GridView ID="GridView_Costs" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
