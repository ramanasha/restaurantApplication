<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="viewReport.aspx.cs" Inherits="blog.viewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 57px;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div><!--
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/calendar-icon.png" OnClick="ImageButton2_Click" Height="32px" Width="25px" />
                    <asp:TextBox ID="fromDate" runat="server"></asp:TextBox></td>

                <td></td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/calendar-icon.png" OnClick="ImageButton3_Click" Height="22px" Width="54px" />
                    <asp:TextBox ID="toDate" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Button ID="recordsButton" runat="server" Text="View records" OnClick="recordsButton_Click" /></td>

            </tr>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="16px" Caption="From" CaptionAlign="Top" OnSelectionChanged="Calendar2_SelectionChanged">
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
                <td></td>

                <td>

                    <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="25px" Caption="To" CaptionAlign="Top" OnSelectionChanged="Calendar3_SelectionChanged">
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

        </table>
        -->
    </div>
    <div>
        <h3>View records (Select date) </h3>
        <asp:DropDownList  CssClass="dropdown" ID="dayDropDown" runat="server" DataSourceID="DropDownDataSource" DataTextField="Days" DataValueField="Days"></asp:DropDownList>

        <asp:SqlDataSource ID="DropDownDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NetShopConnectionString %>" SelectCommand="SELECT [Days] FROM [Sale]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="GridVeiwSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NetShopConnectionString %>" SelectCommand="SELECT * FROM [Sale] WHERE ([Days] = @Days)">
            <SelectParameters>
                <asp:ControlParameter ControlID="dayDropDown" DbType="Date" Name="Days" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView  CssClass="table table-hover table-striped" GridLines="None"  ID="GridViewReport" runat="server" AutoGenerateColumns="False" DataSourceID="GridVeiwSqlDataSource">
            <Columns>
                <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                <asp:BoundField DataField="TotalSale" HeaderText="TotalSale" SortExpression="TotalSale" />
                <asp:BoundField DataField="BankCardAmount" HeaderText="BankCardAmount" SortExpression="BankCardAmount" />
                <asp:BoundField DataField="LunchCardAmount" HeaderText="LunchCardAmount" SortExpression="LunchCardAmount" />
                <asp:BoundField DataField="Bill" HeaderText="Bill" SortExpression="Bill" />
                <asp:BoundField DataField="BillCustomer" HeaderText="BillCustomer" SortExpression="BillCustomer" />
                <asp:BoundField DataField="Cash" HeaderText="Cash" SortExpression="Cash" />
                <asp:BoundField DataField="CashCollected" HeaderText="CashCollected" SortExpression="CashCollected" />
                <asp:BoundField DataField="CashCounter" HeaderText="CashCounter" SortExpression="CashCounter" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
            </Columns>
        </asp:GridView>

    </div>
    <a href="Logout.aspx">
        <asp:Label ID="Label1" runat="server" Text="LogOut"></asp:Label></a>
</asp:Content>
