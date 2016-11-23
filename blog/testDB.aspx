<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testDB.aspx.cs" Inherits="blog.testDB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [suman]"></asp:SqlDataSource>
    </form>
</body>
</html>
