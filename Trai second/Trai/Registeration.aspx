<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            width: 419px;
        }
        .auto-style3 {
            width: 116px;
        }
        .auto-style4 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Customer Registeration" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label17" runat="server" ForeColor="Black" Text="j" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Height="95px" Width="120px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Black" BorderStyle="Double" BorderWidth="1px" ForeColor="White" Height="26px" Width="62px" OnClick="LinkButton1_Click">&lt; Photo</asp:LinkButton>
                <asp:FileUpload ID="FileUpload2" runat="server" Width="226px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Black" Text="Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Black" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label14" runat="server" Font-Size="Small" ForeColor="Black" Text="Male"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GroupName="a" Height="27px" Text="Male" Width="27px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Font-Size="Small" ForeColor="Black" Text="Female"></asp:Label>
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GroupName="a" Height="27px" Text="Male" Width="27px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="Black" Text="Age"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox9" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Black" Text="Guardian name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="Black" Text="Natinality"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Height="30px" Width="275px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Srilanga</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Font-Size="Small" ForeColor="Black" Text="Address"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="46px" TextMode="MultiLine" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="Black" Text="Pincode"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label9" runat="server" Font-Size="Small" ForeColor="Black" Text="E-mailid"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label10" runat="server" Font-Size="Small" ForeColor="Black" Text="Mobno"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label11" runat="server" Font-Size="Small" ForeColor="Black" Text="Purpose"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox7" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label12" runat="server" Font-Size="Small" ForeColor="Black" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

