<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp_Page.aspx.cs" Inherits="Signup_form.SignUp_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 317px;
        }
        .auto-style2 {
            width: 317px;
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter Your Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Required="true" ToolTip="Enter Your Email ID"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Required="true" ToolTip="Enter Your Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Required="true"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="#66CCFF" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="#FF99CC" GroupName="Gender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">City</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Banglore</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Kolkatta</asp:ListItem>
                        <asp:ListItem>pune</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" ForeColor="#009900" Height="66px" OnClick="Button1_Click" Text="SignUp" Width="132px" />
    </form>
</body>
</html>
