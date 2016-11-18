<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="blog.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="jumbotron">
<div class="container">
        <table>
            <tr>
                <td>
                    <asp:Label ID="label1" runat="server" Text="User Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="username" runat="server" BorderColor="#00cc00"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username cannot be empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="label2" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" BorderColor="#00cc00"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password cannot be empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
            <td>
                    <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" BackColor="#00CC00" />
</td>
            </tr>

        </table>
    </div>
</div>
    <div>
    </div>


</asp:Content>
