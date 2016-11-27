<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="blog.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
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
    <style>
        body {
            background-color: #444;
            background: url(https://scontent-arn2-1.xx.fbcdn.net/t31.0-8/10608716_1468319690091506_7308687453393888066_o.jpg) no-repeat center center fixed;
            -webkit-background-size: 100% 100%;
            -moz-background-size: 100% 100%;
            -o-background-size: 100% 100%;
            background-size: 100% 100%;
        }

        .vertical-offset-100 {
            padding-top: 100px;
        }
    </style>
    <script type="text/javascript">
        function submitFuction() {
            window.location = "~/SaleReport.aspx";
        };
        document.getElementById("viewReport").onclick = function () {
            location.href = "~/viewReport.aspx";
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="welcomeName" runat="server" Text="Welcome"></asp:Label>

    <div class="container">
        <h3 class="text-primary text-center"></h3>
        <div class="row">
            <div class="col-xs-6">
                <div class="well">
                    <a href="SaleReport.aspx">Submit sales report <span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a>

                </div>
            </div>
            <div class="col-xs-6">
                <div class="well">

                    <a href="viewReport.aspx">View sales report <span class="glyphicon glyphicon-download" aria-hidden="true"></span></a>

                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="text-center well">
            <a href="Logout.aspx">
                <asp:Label ID="Label1" runat="server" Text="LogOut"></asp:Label>
                <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a>
        </div>
    </div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>
