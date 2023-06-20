<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_JobCard.aspx.cs" Inherits="POE_CLDV.WebForm_JobCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 431px;
        }
        .auto-style4 {
            width: 200px;
        }
        .auto-style7 {
            width: 871px;
        }
        .auto-style8 {
            width: 148px;
        }
        .auto-style9 {
            width: 1452px;
        }
        .auto-style10 {
            width: 534px;
        }
        .auto-style11 {
            width: 534px;
            height: 22px;
        }
        .auto-style12 {
            width: 431px;
            height: 22px;
        }
        .auto-style13 {
            width: 200px;
            height: 22px;
        }
        .auto-style14 {
            width: 148px;
            height: 22px;
        }
        .auto-style15 {
            width: 1452px;
            height: 22px;
        }
        .auto-style16 {
            width: 871px;
            height: 22px;
        }
    </style>
</head>
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Label ID="lblJobCard" runat="server" Text="Job Card" Font-Bold="True" Font-Size="X-Large"></asp:Label>
<body>
    <form id="form1" runat="server">
        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnReturnHome" runat="server" OnClick="btnExit_Click" Text="Return to Home Page" Width="168px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">Job Card Number</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtJobCardNo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnGet" runat="server" Text="Get" OnClick="btnGet_Click" Width="101px" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">Customer ID</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">Job Type</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtJobType" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">Job Code</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtJobCode" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">Number Of Days</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNoOfDays" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style14">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" Width="101px" />
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="101px" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:GridView ID="GridView_Job" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
