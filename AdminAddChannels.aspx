<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAddChannels.aspx.cs" Inherits="AdminAddChannels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            width: 100%;
            background-color: #C0C0C0;
        }
        .auto-style4 {
            width: 146px;
        }
        .auto-style5 {
            width: 93px;
        }
        .auto-style6 {
            width: 203px;
        }
        .auto-style9 {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style6">
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#003366" BorderColor="#003366" BorderStyle="Groove" BorderWidth="1px" ForeColor="White" OnClick="LinkButton1_Click">&lt;&lt;  Add Channels  &gt;&gt;</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#003366" BorderColor="#003366" BorderStyle="Groove" BorderWidth="1px" ForeColor="White" OnClick="LinkButton2_Click">&lt;&lt; Channel list &gt;&gt;</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" ForeColor="Black" Text="Channel name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" Font-Names="Arial" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" ForeColor="Black" Text="Stream Url"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" Font-Names="Arial" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" ForeColor="Black" Text="Category"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Arial" ForeColor="Black" Height="30px" Width="275px">
                                        <asp:ListItem>select</asp:ListItem>
                                        <asp:ListItem>Movie</asp:ListItem>
                                        <asp:ListItem>News</asp:ListItem>
                                        <asp:ListItem>Cartoon</asp:ListItem>
                                        <asp:ListItem>Music</asp:ListItem>
                                        <asp:ListItem>Entertainment</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" ForeColor="Black" Text="Language"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Arial" ForeColor="Black" Height="30px" Width="275px">
                                        <asp:ListItem>select</asp:ListItem>
                                        <asp:ListItem>Malayalam</asp:ListItem>
                                        <asp:ListItem>Tamil</asp:ListItem>
                                        <asp:ListItem>Hindi</asp:ListItem>
                                        <asp:ListItem>English</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" ForeColor="Black" Text="Level"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Font-Names="Arial" ForeColor="Black" Height="30px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="275px">
                                        <asp:ListItem>select</asp:ListItem>
                                        <asp:ListItem>Free Channels</asp:ListItem>
                                        <asp:ListItem>Pay Channels</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" ForeColor="Black" Text="Price"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" Font-Names="Arial" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" ForeColor="Black" Text="Emblem"></asp:Label>
                                </td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Groove" />
                                            <br />
                                            <asp:FileUpload ID="FileUpload2" runat="server" Width="88px" />
                                    <asp:LinkButton ID="LinkButton5" runat="server" BackColor="Black" BorderStyle="Double" BorderWidth="1px" Font-Names="Arial" ForeColor="White" Height="26px" OnClick="LinkButton1_Click" Width="80px">&lt;&lt; Upload</asp:LinkButton>
                                    <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="auto-style2">
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="967px" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField HeaderText="Id" DataField="Id" />
                                            <asp:BoundField HeaderText="Channel Name" DataField="channelname" />
                                            <asp:BoundField HeaderText="Language" DataField="language" />
                                            <asp:BoundField HeaderText="Price" DataField="price" />
                                            <asp:BoundField HeaderText="Category" DataField="category" />
                                            <asp:BoundField HeaderText="Streamurl" DataField="streamurl" />
                                            <asp:ImageField HeaderText="Emblem" DataImageUrlField="emblem">
                                            </asp:ImageField>
                                            <asp:CommandField HeaderText="Online Tv" SelectText="Watch" ShowSelectButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#7C6F57" />
                                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#E3EAEB" />
                                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                                    </asp:GridView>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

