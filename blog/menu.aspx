<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="blog.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>weServe Oy</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="welcomeName" runat="server" Text="Welcome"></asp:Label>
   <!--
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation"> 
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                </button>
            </div>
        </div>
    </div>
    </div>
    <div>
        -->
    <br /><br />
    <div>
        <asp:Menu ID="Menu1" runat="server" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" ForeColor="Red">
            <DynamicHoverStyle BackColor="#66FF33" />
            <Items>
                <asp:MenuItem Text="Submit sale report" Value="Page 1" NavigateUrl="~/SaleReport.aspx"></asp:MenuItem>
                
                <asp:MenuItem Text="View records" Value="View records" NavigateUrl="~/viewReport.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    
    <br />

    <a href="Logout.aspx">
        <asp:Label ID="Label1" runat="server" Text="LogOut"></asp:Label></a>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>
