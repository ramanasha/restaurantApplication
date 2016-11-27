<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="blog.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <style> 
        /*Styling backgroung image*/
         .img-background {
            background-image: url('http://img.labnol.org/di/high-quality-photo.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
        }
        /*styling Login Jumbotron*/
        #log_in_jumbo,white {
            background: rgb(200, 54, 54);
            background: rgba(200, 54, 54, 0.1);
        }
        .jumbotron {
            padding: 0.5em 0.6em;
        }
        /*styling table*/
       
        
    </style> -->
    <style>
        body {
            background-color: #444;
            background: url(https://scontent-arn2-1.xx.fbcdn.net/t31.0-8/10465449_1468320010091474_7742841275273353814_o.jpg) no-repeat center center fixed;
            -webkit-background-size: 100% 100%;
            -moz-background-size: 100% 100%;
            -o-background-size: 100% 100%;
            background-size: 100% 100%;
        }

        .vertical-offset-100 {
            padding-top: 100px;
        }
    </style>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
    <script src="scripts/bootstrap.min.js">
    </script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--creating a container -->
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="text-center">Sign in</h3>
                   
                        <!--creating table -->
                        <table id="white" class="table table-condensed table-responsive">
                            <tr>
                                <td>
                                    <asp:Label ID="label1" runat="server" Text="Username "></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username cannot be empty"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="label2" runat="server" Text="Password "></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password cannot be empty"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <div class="col-md-6 text-center">
                            <asp:Button Class="btn btn-block btn-primary center-block" ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
                        </div>
                    </div>
                </div>
            </div>
            <div>
            </div>
        </div>
    </div>
</asp:Content>
