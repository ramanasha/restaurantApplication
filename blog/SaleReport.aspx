<%@ Page Title="" Language="C#" MasterPageFile="~/myMasterPage.Master" AutoEventWireup="true" CodeBehind="SaleReport.aspx.cs" Inherits="blog.SaleReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
  <div class="row">
    <div class="col-lg-6 col-lg-offset-3">

    <div class="well">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Date"></asp:Label></td>
               <td class="auto-style1">
                    <asp:TextBox ID="datepicker" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/images/calendar-icon.png" OnClick="ImageButton1_Click" Width="38px" />
                    </td>
                <td>
                
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" style="margin-bottom: 0px" TitleFormat="Month" Width="70px" Caption="Work day" CaptionAlign="Top" OnDayRender="Calendar1_DayRender">
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
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Total sale"></asp:Label></td>
                <td>
                    <asp:TextBox ID="totalSale" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="totalSale" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Amount collected from card"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="amountCard" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="amountCard" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Total lunch card collected"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="lunchCard" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Total bill amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="billAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Bill to be payed by the customer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="customerBillAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Cash amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="amountCash" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="amountCash" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Cash Collected from today"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cashCollected" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="cashCollected" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Cash left in cash counter"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cashCounter" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="cashCounter" Display="Dynamic" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Comments"></asp:Label></td>
                <td>
                    <asp:TextBox ID="comments" runat="server"></asp:TextBox></td>

            </tr>
            <tr></tr>
            <tr>
                
                <td colspan="2">
                    <asp:Button ID="confirm" runat="server" Text="Confirm" OnClick="confirm_Click" /></td>
                <td><a href="Logout.aspx">
        <asp:Label ID="Label11" runat="server" Text="LogOut"></asp:Label></a></td>
            </tr>

        </table>
    </div>
        </div>
      </div>
        </div>
    
</asp:Content>