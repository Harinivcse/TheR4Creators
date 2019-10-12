<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="MYWEB.details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label7" runat="server" ForeColor="Black" 
        style="z-index: 1; left: 444px; top: 41px; position: absolute" Text="DETAILS"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC00" BorderColor="Black" 
        BorderStyle="Groove" BorderWidth="20px" 
        style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 597px; width: 1068px; margin-top: 0px">
        <asp:Label ID="Label8" runat="server" Text="name" 
            style="z-index: 1; left: 497px; top: 12px; position: absolute; margin-top: 0px"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 2px; top: 59px; position: absolute" Text="gender"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox1" runat="server" 
            ontextchanged="TextBox1_TextChanged" 
            
            style="z-index: 1; left: 67px; top: 12px; position: absolute; height: 22px; width: 128px" 
            ValidationGroup="group 1"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label9" runat="server" Text="NAME"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="male" />
&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="female" />
        <br />
        <asp:Label ID="Label4" runat="server" Text="college name"></asp:Label>
        &nbsp;<asp:ListBox ID="ListBox1" runat="server" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged" 
            style="z-index: 1; left: 129px; top: 88px; position: absolute; height: 66px;">
            <asp:ListItem>aa</asp:ListItem>
            <asp:ListItem>bb</asp:ListItem>
            <asp:ListItem>cc</asp:ListItem>
            <asp:ListItem>dd</asp:ListItem>
            <asp:ListItem>ee</asp:ListItem>
            <asp:ListItem>ff</asp:ListItem>
        </asp:ListBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            style="z-index: 1; left: 648px; top: 86px; position: absolute; height: 133px; width: 120px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
            SelectCommand="SELECT [id], [name], [password] FROM [regs]">
        </asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="enter name" ForeColor="#CC0000" 
            style="z-index: 1; left: 212px; top: 17px; position: absolute" 
            ValidationGroup="group 1"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 326px; top: 162px; position: absolute; height: 59px" 
            ValidationGroup="group 1">
            <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem Value="33">22</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="choose  one" 
            ForeColor="#CC0000" InitialValue="--select--" 
            style="z-index: 1; left: 445px; top: 167px; position: absolute" 
            ValidationGroup="group 1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 27px; top: 226px; position: absolute; " 
            Text="dept"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 135px; top: 188px; position: absolute; margin-top: 34px">
            <asp:ListItem>cse</asp:ListItem>
            <asp:ListItem>it</asp:ListItem>
            <asp:ListItem>ece</asp:ListItem>
            <asp:ListItem>eee</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="calender"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            ShowGridLines="True" 
            style="z-index: 1; left: 131px; top: 342px; position: absolute; height: 200px; width: 220px" 
            Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="default.aspx" 
            ValidationGroup="group 1">redirect</asp:LinkButton>
    </asp:Panel>
    </form>
</body>
</html>
