<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pg.aspx.cs" Inherits="register.pg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Home</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="register.aspx">Repaired</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="deliver.aspx" >Deliver</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="retrive.aspx">Retrive</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="changepassword.aspx">changepassword</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Login.aspx">Logout</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>
        <div>
            <h1 class="auto-style3">Welcome to world class famous Mobile Repair shop</h1>
        </div>
    </form>
</body>
</html>
