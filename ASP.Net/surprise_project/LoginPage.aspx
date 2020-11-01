<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SurprisePrj.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
        .auto-style2 {
            height: 60px;
            width: 278px;
        }
        .auto-style3 {
            width: 278px;
        }
        .auto-style4 {
            height: 60px;
            width: 351px;
        }
        .auto-style5 {
            width: 351px;
        }
        .auto-style6 {
            width: 100%;
            height: 116px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body style="height: 136px">
    <form id="form1" runat="server">
        <div class="auto-style7">
        <div>
        </div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style2" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase;">UserName</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#3399FF" BorderStyle="Solid" ToolTip="Enter UserName" Width="264px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName Missing" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="#3399FF" BorderStyle="Solid" TextMode="Password" ToolTip="Enter Password" Width="264px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Missing" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" BorderColor="#0099FF" BorderStyle="Solid" ForeColor="White" Height="54px" OnClick="Button1_Click" Text="Login" Width="183px" />
        </div>
    </form>
</body>
</html>
