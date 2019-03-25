<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
            background-color: #C0C0C0;
        }
        .auto-style2 {
            width: 96px;
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
					<li><a href="index.aspx">Home</a></li>
					<li><a href="Registeration.aspx">Customer registeration</a></li>
                    	<li><a href="CopyrighterRegisteration.aspx">Copyright registeration</a></li>
					<li><a href="Login.aspx">Login</a></li>
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
                <a href="#er" class="button big alt scrolly">Login</a>
            </div>

        </section>

		<!-- Main --><div id="er"></div>
      <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Text="Login"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="User type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Height="25px" Width="277px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Copyright</asp:ListItem>
                        <asp:ListItem>Customer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="User name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black" Height="22px" Width="277px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
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
                    <h3>Our Services</h3>
                    <p>Online Tv, Entertainment Video, Favourite channels</p>
                </header>

                <!-- 3 Column Video Section -->
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
