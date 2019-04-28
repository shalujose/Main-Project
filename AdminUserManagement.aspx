<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUserManagement.aspx.cs" Inherits="AdminUserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>TRAI CYBER SECURITY</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
  
    		<header id="header">
				<h1><a href="#">TRAI <span>CYBER SECURITY</span></a></h1>
				<a href="#menu">Menu</a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
			<li><a href="AdminAddChannels.aspx">Home</a></li>
					<li><a href="AdminAddChannels.aspx">Tv Channels</a></li>
                    	<li><a href="Admincopyrightcontents.aspx">Copyright Contents</a></li>
					<li><a href="AdminUserManagement.aspx">User Management</a></li>
                    <li><a href="AdminBankaccount.aspx">Bank Account</a></li>
                      <li><a href="Messenger.aspx">Messenger</a></li>
                      <li><a href="Adminsecurity.aspx">Security</a></li>
                    <li> <a href="Index.aspx">Logout</a></li>
				</ul>
			</nav>

			<!-- Banner -->
  
			<!--
			
			-->
        <section id="banner" data-video="images/banner">


            <div class="inner">
                <header>
                   <h2>TRAI - INDIA</h2>
                    <p>
                        Trai Rule : From 1 Feb 2019 <br />
                        "  Pay Only the Channels which they Watch ".<br />
                        CopyRight Content Protection, Online Tv Service
                    </p>
                </header>
                <a href="#er" class="button big alt scrolly">User Management</a>
            </div>

        </section>

		<!-- Main --><div id="er"></div>
      <form id="form1" runat="server">
<div>
        
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton12" runat="server" BackColor="#003366" BorderColor="#003366" BorderStyle="Groove" ForeColor="White" OnClick="LinkButton12_Click">&lt;&lt;  TV  CUSTOMERS  &gt;&gt;</asp:LinkButton>
                        </td>
                        <td class="auto-style6">
                            <asp:LinkButton ID="LinkButton11" runat="server" BackColor="#003366" BorderColor="#003366" BorderStyle="Groove" ForeColor="White" OnClick="LinkButton11_Click">&lt;&lt;  COPYRIGHT PAID  &gt;&gt;</asp:LinkButton>
                        </td>
                        <td class="auto-style6">
                            <asp:LinkButton ID="LinkButton13" runat="server" BackColor="#003366" BorderColor="#003366" BorderStyle="Groove" ForeColor="White" OnClick="LinkButton13_Click">&lt;&lt;  CONTENT RATING   &gt;&gt;</asp:LinkButton>
                        </td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
       
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="400px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="customername" HeaderText="CustomerName" />
                                            <asp:CommandField HeaderText="Channel list" SelectText="Click" ShowSelectButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                    <br />
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="967px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="channelid" HeaderText="Channel_id" />
                                            <asp:BoundField DataField="channelname" HeaderText="Channelname" />
                                            <asp:BoundField DataField="price" HeaderText="Price" />
                                            <asp:BoundField DataField="selecteddate" HeaderText="Selecteddate" />
                                            <asp:BoundField DataField="expiredate" HeaderText="Expiredate" />
                                            <asp:BoundField DataField="duration" HeaderText="Duration" />
                                            <asp:ImageField DataImageUrlField="emblem" HeaderText="Emblem">
                                            </asp:ImageField>
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
                                    <br />
                                    
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="400px">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="customername" HeaderText="Customername" />
                                            <asp:CommandField HeaderText="Paid_Files" SelectText="Click" ShowSelectButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="967px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="contentid" HeaderText="Content_Id" />
                                            <asp:BoundField DataField="selectedcontent" HeaderText="Content" />
                                            <asp:BoundField DataField="copyrightername" HeaderText="CopyrighterName" />
                                            <asp:BoundField DataField="paiddate" HeaderText="Paid_date" />
                                            <asp:BoundField DataField="price" HeaderText="Price" />
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
                                    <br />
                                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                                    <video id="myVideo" runat="server" autoplay="autoplay" controls="controls" height="550" width="960"/>
                                </asp:Panel>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="contentid" HeaderText="Content_id" />
                                <asp:BoundField DataField="selectedcontent" HeaderText="Content_Name" />
                                <asp:BoundField DataField="copyrightername" HeaderText="Copyrightername" />
                                <asp:CommandField HeaderText="Rating" SelectText="click" ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <br />
                        <asp:Panel ID="Panel2" runat="server" Visible="False">
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Content id  :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="."></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Content Name  :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="."></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Copyrighter Name  :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="."></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Rating  :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="."></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
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

    </div>
    
    </form>
			<div >

			<!-- One -->
				
			<!-- Two -->
				
			<!-- Three -->
    <section class="wrapper ">
        <div></div>
        <div id="main">
            <div class="inner">

                <header class="align-center">
                    <h3>Our Services                  <!-- 3 Column Video Section -->
                <div class="flex flex-3">
                 
                    <div class="video col">
                        <video poster="images/pic09.jpg" width="364" height="250" controls="controls">
                            <source src="Advideos/Malayalam.mp4" type="video/mp4" />
                        </video>
                   
                   

                    </div>

                    <div class="video col">
                        <video poster="images/pic10.jpg" controls="controls" width="364" height="250">
                            <source src="Advideos/Tamil.mp4" type="video/mp4" />
                        </video>
                       
                    </div>
                    <div class="video col">
                        <video poster="images/pic08.jpg" controls="controls" width="364" height="250">
                            <source src="Advideos/Star%20value.mp4" type="video/mp4" />
                        </video>
                     
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex flex-3">
						<div class="col">
							<h4>TRAI</h4>
							<ul class="alt">
								<li><a href="#">Create a Account</a></li>
								<li><a href="#">Favorite Tv Channel </a></li>
								<li><a href="#">Choose & Pay Tv Channels</a></li>
								<li><a href="#">View Online Tv</a></li>
							</ul>
						</div>
						<div class="col">
							<h4>CYBER SECURITY</h4>
							<ul class="alt">
								<li><a href="#">Favourite Movies</a></li>
								<li><a href="#">Favouite Videos</a></li>
								<li><a href="#">Choose & Pay Copyright Content</a></li>
								<li><a href="#">Copy right Protection</a></li>
							</ul>
						</div>
						<div class="col">
							<h4>OVERVIEW</h4>
							<ul class="alt">
								<li><a href="#">Public Create a Account</a></li>
								<li><a href="#">Connect Bank a/c  </a></li>
								<li><a href="#">Select Tv Channel list </a></li>
								<li><a href="#">Select Favourite Video & Pay</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="copyright">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-snapchat"><span class="label">Snapchat</span></a></li>
					</ul>
					Copyright  &copy; TRAI CYBER SECURITY
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>





</body>
</html>
