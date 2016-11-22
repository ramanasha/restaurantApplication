<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="viewReport.aspx.cs" Inherits="blog.viewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>View sales:</h2>
    <div>
        <h3>View sales from:<asp:SqlDataSource ID="dropDownDataSourceLatest" runat="server" ConnectionString="<%$ ConnectionStrings:NetShopConnectionString %>" SelectCommand="SELECT [Days] FROM [Sale]"></asp:SqlDataSource>
        </h3>

    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dropDownDataSourceLatest" DataTextField="Days" DataValueField="Days">
    </asp:DropDownList>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="DetailsDataSourceLatest" Height="50px" Width="125px">
        <Fields>
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
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="DetailsDataSourceLatest" runat="server" ConnectionString="<%$ ConnectionStrings:NetShopConnectionString %>" SelectCommand="SELECT * FROM [Sale] WHERE ([Days] = @Days)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DbType="Date" Name="Days" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br /><br />
    <div>
    
          <asp:Label ID="Label1" runat="server" Text="From: "></asp:Label>
          <asp:TextBox ID="fromD ate" runat="server"></asp:TextBox>
      
    
            <asp:Label ID="Label2" runat="server" Text="   To:  "></asp:Label>
            <asp:TextBox ID="ToDate" runat="server"></asp:TextBox>

        <asp:Button ID="btn_Search" runat="server" Text="Search" />
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
