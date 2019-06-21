<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="register.changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div> <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Home</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="register.aspx">Repaired</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="deliver.aspx">Deliver</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="retrive.aspx">Retrive</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="changepassword.aspx">changepassword</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Login.aspx">Logout</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div> <br />  <br />
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Old Password&nbsp; :</td>
                    <td>
                        <asp:TextBox ID="oldpassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="oldpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> <br />
                <tr>
                    <td>New Password&nbsp; :</td>
                    <td>
                        <asp:TextBox ID="newpassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="newpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> <br />
                <tr>
                    <td>Re-Enter New Password&nbsp; :</td>
                    <td>
                        <asp:TextBox ID="reenter" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newpassword" ControlToValidate="reenter" ErrorMessage="Re-Enter the Above password " ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr> <br />
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                    </td>
                    <td>
                        <input id="Reset1" type="reset" value="reset" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
