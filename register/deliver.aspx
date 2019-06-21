<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deliver.aspx.cs" Inherits="register.deliver" %>

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
        .auto-style4 {
            width: 307px;
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
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="register.aspx">Repaired</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="deliver.aspx">Deliver</asp:HyperLink>
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
        </div> <br />  <br />
        <div>
            <table class="auto-style1">
        <tr>
            <td class="auto-style2">IdName :</td>
            <td>
                <asp:TextBox ID="didname" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
            </td>
        </tr>
    </table>
        </div>

        <table class="auto-style1">
                <tr>
                    <td>Idname</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="ddname" runat="server"></asp:TextBox>
                    </td>
                    <td>Mobilename</td>
                    <td>
                        <asp:TextBox ID="ddmobilename" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="ddusername" runat="server"></asp:TextBox>
                    </td>
                    <td>Issue</td>
                    <td>
                        <asp:TextBox ID="ddissue" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="ddmobile" runat="server"></asp:TextBox>
                    </td>


                    </table><br />


        <div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    <asp:Label ID="Label1" runat="server" Text="DELIVERED"></asp:Label>

    &nbsp;&nbsp;

    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="COST"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SUB" />
</div>

           </form>
    
</body>
</html>
