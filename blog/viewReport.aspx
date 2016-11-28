<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="viewReport.aspx.cs" Inherits="blog.viewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>View sales</h2>
    <div class="container text-capitalize">
        <div class="jumbotron">
            <div>
                <h3>Report from
                <asp:SqlDataSource ID="dropDownDataSourceLatest" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Days] FROM [Sale]"></asp:SqlDataSource>
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
        </div>
    </div>

    <br />
    <br />
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

    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Select start date" Text=""></asp:TextBox>


                    <asp:Button ID="Button1" runat="server" Text="Start Date" OnClick="Button1_Click" />


                    <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>


                    &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="col-md-6 col-sm-12">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Select end date" Text=""></asp:TextBox>


                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="End Date" />
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False"></asp:Calendar>


                    <br />
                </div>
            </div>
            <div>


                <div style="overflow: auto; width: auto; max-height: 400px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="dataTable" ShowHeaderWhenEmpty="True" Style="overflow: auto; width: auto; max-height: 400px;">
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT Days, TotalSale, BankCardAmount, LunchCardAmount, Bill, BillCustomer, Cash, CashCollected, CashCounter, Comments FROM Sale WHERE (Days BETWEEN @dt1 AND @dt2)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="dt1" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="dt2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
        </div>
        <div class="row">
           <div class="col-sm-6 col-md-6">
            <a href="Logout.aspx" class="btn btn-danger" role="button">Logout <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a>
        </div> 
            <div class="col-sm-6 col-md-6">
                <a href="SaleReport.aspx" class="btn btn-info" role="button">Submit new report <span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a>
            </div>
        </div>
        

    </div>


</asp:Content>
