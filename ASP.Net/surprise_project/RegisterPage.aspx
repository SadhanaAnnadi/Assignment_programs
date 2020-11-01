<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SurprisePrj.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 290px;
        }
        .auto-style2 {
            width: 441px;
        }
        .auto-style3 {
            width: 290px;
            height: 54px;
        }
        .auto-style4 {
            width: 441px;
            height: 54px;
        }
        .auto-style5 {
            height: 54px;
        }
        .auto-style6 {
            width: 100%;
            height: 334px;
            margin-bottom: 8px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
        <div>
        </div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">UserName</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter UserName" Width="290px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Enter Password" Width="290px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Confirm Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" ToolTip="ReEnter Password" Width="290px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Not Matched" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Age</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" ToolTip="Enter your Age" Width="290px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age value Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Gender</td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" BackColor="#009900" BorderColor="#669900" BorderStyle="Solid" ForeColor="White" Height="57px" OnClick="Button1_Click" Text="Register/SignUp" />
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Errors:" />
    </form>
</body>
</html>
