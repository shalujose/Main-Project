<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gatway1.aspx.cs" Inherits="Gatway1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 755px;
        }
        .auto-style20 {
            width: 135px;
        }
        .auto-style15 {
            width: 694px;
        }
        .auto-style19 {
            width: 98px;
        }
        .auto-style4 {
            width: 137px;
        }
        .auto-style10 {
            width: 156px;
        }
        .auto-style18 {
            width: 384px;
        }
        .auto-style16 {
            width: 136px;
        }
        .auto-style14 {
            width: 77px;
        }
        .auto-style12 {
            width: 208px;
        }
        .auto-style13 {
            width: 270px;
        }
        .auto-style8 {
            width: 211px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="background-image: url('images/backg.jpg')">
            <tr>
                <td>
    <div color: #000000;">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="GATEWAY - NET BANKING "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="White" Text="Your Bank Details"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="White" Text="Beneficiary Details"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Bank Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Label" Font-Bold="False"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Bank Name  :" Font-Bold="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Account Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label11" runat="server" ForeColor="White" Text="Label" Font-Bold="False"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Account Name  :" Font-Bold="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Account No."></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label21" runat="server" ForeColor="White" Text="Label" Font-Bold="False"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label12" runat="server" ForeColor="White" Text="Account No   :" Font-Bold="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label17" runat="server" ForeColor="White" Text="IFSC code"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label22" runat="server" ForeColor="White" Text="Label" Font-Bold="False"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label13" runat="server" ForeColor="White" Text="IFSC code   :" Font-Bold="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label27" runat="server" ForeColor="White" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>
                    <asp:Label ID="Label26" runat="server" ForeColor="White" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:Label ID="Label23" runat="server" ForeColor="White" Text="Transaction Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="Label24" runat="server" ForeColor="White" Text="Content Name"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label25" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="Label18" runat="server" ForeColor="White" Text="Copyright Content Price ( Rs )"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label19" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="29px" OnClick="Button1_Click" Text="PROCEED" Width="172px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
