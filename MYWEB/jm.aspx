﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jm.aspx.cs" Inherits="MYWEB.jm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="add" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="view" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <asp:Image ID="Image1" runat="server" Height="138px" Width="150px" />
    </form>
</body>
</html>
