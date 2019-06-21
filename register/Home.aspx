<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="register.Home" %>

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
            text-align: right;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: center;
            height: 23px;
        }
        .auto-style6 {
            text-align: right;
            height: 23px;
            width: 243px;
        }
        .auto-style7 {
            text-align: center;
            height: 23px;
            width: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Home</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="register.aspx">Repaired</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="deliver.aspx">Deliver</asp:HyperLink>
                    </td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="retrive.aspx">Retrive</asp:HyperLink>
                    </td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="changepassword.aspx">changepassword</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Login.aspx">Logout</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <h1>Profile</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Shop Name&nbsp; :</td>
                    <td>&nbsp;&nbsp; Get Repair the Things</td>
                </tr>
                <tr>
                    <td class="auto-style2">Name&nbsp;&nbsp; :</td>
                    <td>&nbsp;&nbsp; YoYoAyyappa</td>
                </tr>
                <tr>
                    <td class="auto-style3">Training&nbsp; :</td>
                    <td class="auto-style4">&nbsp;&nbsp; The World class Expeerience</td>
                </tr>
                <tr>
                    <td class="auto-style2">Repaired Electronics&nbsp; :</td>
                    <td>&nbsp;&nbsp; Mobiles,Laptops,Tabs</td>
                </tr>
                <tr>
                    <td class="auto-style2">Address&nbsp; :</td>
                    <td>&nbsp;&nbsp; d.no:12-5-89,gandhi road,beside LL shop</td>
                </tr>
                <tr>
                    <td class="auto-style2">Contact No&nbsp; :</td>
                    <td>&nbsp;&nbsp; 9632147850</td>
                </tr>
                <tr>
                    <td class="auto-style2">Email Id&nbsp; :</td>
                    <td>&nbsp;&nbsp; getrepairedthethings@gmail.com</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
