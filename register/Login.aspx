<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="register.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2 class="auto-style1">Login</h2>
            <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Login Id : </asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br /> <br />
            <asp:Label ID="Label2" runat="server" Text="Label">Password : </asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br /> <br />
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

            </div>
           

        </div>
    </form>
</body>
</html>
