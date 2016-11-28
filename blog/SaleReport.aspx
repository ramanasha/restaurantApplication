<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="SaleReport.aspx.cs" Inherits="blog.SaleReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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

        .auto-style1 {
            height: 193px;
        }

        .buttonLink {
            display: block;
            width: 115px;
            height: 25px;
            background: #4E9CAF;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            color: white;
            font-weight: bold;
        }
        /* css to have space between rows*/
        tr.spaceUnder > td {
            padding-bottom: 2em;
        }

        tr.spaceUnderPlus > td {
            padding-bottom: 6em;
        }

        /*css to make container full screen*/

        .container-full {
            margin: 0 auto;
            width: 100%;
        }

        .container-fluid {
            padding-top: 2em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid container-full ">
        <div id="full-screen-form">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3">

                    <div class="well">
                        <table>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Date"></asp:Label>

                                </td>
                                <td>
                                    <asp:TextBox ID="datepicker" runat="server"></asp:TextBox>

                                </td>
                                <td>

                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Style="margin-bottom: 0px" TitleFormat="Month" Width="70px" Caption="Work day" CaptionAlign="Top" OnDayRender="Calendar1_DayRender">
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                                        <DayStyle Width="14%" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                                        <TodayDayStyle BackColor="#CCCC99" />
                                    </asp:Calendar>

                                </td>

                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Total sale"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="totalSale" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="totalSale" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>

                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Card amount "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="amountCard" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="amountCard" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Lunch card"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="lunchCard" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Bill"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="billAmount" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Bill customer"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="customerBillAmount" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Cash amount"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="amountCash" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="amountCash" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Cash Collected  "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="cashCollected" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="cashCollected" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="spaceUnder">
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Cash counter"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="cashCounter" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="cashCounter" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="spaceUnderPlus">
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Comments"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="comments" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="spaceUnderPlus">
                                <td>
                                    <a href="Logout.aspx" class="btn btn-danger" role="button">Logout <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a>
                                </td>

                                <td>
                                    <a href="viewReport.aspx" class="btn btn-info" role="button">View Report <span class="glyphicon glyphicon-open-file" aria-hidden="true"></span></a>
                                </td>
                                <td>
                                    <asp:LinkButton ID="confirm" CssClass="btn btn-success" runat="server" OnClick="confirm_Click"> Submit <span class="glyphicon glyphicon-send"/></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
