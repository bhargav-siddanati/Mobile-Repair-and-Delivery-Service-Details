<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="retrive.aspx.cs" Inherits="register.retrive" %>

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
        .auto-style8 {
            width: 448px;
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
        <br />
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">Enter date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
                    </td>
                </tr>
            </table>

        </div>
        <br />
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Idnamed" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Idnamed" HeaderText="Idnamed" ReadOnly="True" SortExpression="Idnamed" />
                    <asp:BoundField DataField="named" HeaderText="named" SortExpression="named" />
                    <asp:BoundField DataField="mobiled" HeaderText="mobiled" SortExpression="mobiled" />
                    <asp:BoundField DataField="dated" HeaderText="dated" SortExpression="dated" />
                    <asp:BoundField DataField="mobilenamed" HeaderText="mobilenamed" SortExpression="mobilenamed" />
                    <asp:BoundField DataField="issued" HeaderText="issued" SortExpression="issued" />
                    <asp:BoundField DataField="delivered" HeaderText="delivered" SortExpression="delivered" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [deliver] WHERE ([dated] = @dated)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="dated" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />


        </div>

    </form>
</body>
</html>
