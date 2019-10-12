<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridview.aspx.cs" Inherits="MYWEB.gridview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('http://localhost:2067/img/r1.jpg')">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" 
            style="z-index: 1; left: 505px; top: 216px; position: absolute; height: 133px; width: 187px">
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 564px; top: 145px; position: absolute" 
            Text="View All" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 345px; top: 156px; position: absolute" Text="Search" />
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 159px; top: 160px; position: absolute"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
