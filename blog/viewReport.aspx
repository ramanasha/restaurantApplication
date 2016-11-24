<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="viewReport.aspx.cs" Inherits="blog.viewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>View sales:</h2>
    <div>
        <h3>View sales from:<asp:SqlDataSource ID="dropDownDataSourceLatest" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Days] FROM [Sale]"></asp:SqlDataSource>
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
    <asp:SqlDataSource ID="DetailsDataSourceLatest" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [Sale] WHERE ([Days] = @Days)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DbType="Date" Name="Days" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br /><br />
    <%--<div>
    
          <asp:Label ID="Label1" runat="server" Text="From: "></asp:Label>
          <asp:TextBox ID="fromDate" runat="server"></asp:TextBox>
      
    
            <asp:Label ID="Label2" runat="server" Text="   To:  "></asp:Label>
            <asp:TextBox ID="ToDate" runat="server"></asp:TextBox>

        <asp:Button ID="btn_Search" runat="server" Text="Search" />
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
    <div>
        
        <asp:TextBox ID="TextBox1" runat="server"  Text="" ></asp:TextBox>

        
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        
        <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

        
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Text=""></asp:TextBox>

        
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False"></asp:Calendar>

        
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT Days, TotalSale, BankCardAmount, LunchCardAmount, Bill, BillCustomer, Cash, CashCollected, CashCounter, Comments FROM Sale WHERE (Days BETWEEN @dt1 AND @dt2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="dt1" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="dt2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
            
            </div>
</asp:Content>
