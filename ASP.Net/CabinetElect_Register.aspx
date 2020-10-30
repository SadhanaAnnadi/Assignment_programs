<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CabinetElect_Register.aspx.cs" Inherits="CabinetElec_regist.CabinetElect_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style11 {
            width: 100%;
            height: 384px;
            margin-bottom: 146px;
        }
        .auto-style18 {
            width: 137px;
            height: 73px;
        }
        .auto-style19 {
            width: 293px;
            height: 73px;
        }
        .auto-style20 {
            height: 73px;
        }
        .auto-style21 {
            width: 137px;
            height: 60px;
        }
        .auto-style22 {
            width: 293px;
            height: 60px;
        }
        .auto-style23 {
            height: 60px;
        }
        .auto-style24 {
            width: 137px;
        }
        .auto-style25 {
            width: 137px;
            height: 96px;
        }
        .auto-style26 {
            width: 293px;
            height: 96px;
        }
        .auto-style27 {
            height: 96px;
        }
        .auto-style28 {
            width: 137px;
            height: 84px;
        }
        .auto-style29 {
            width: 293px;
            height: 84px;
        }
        .auto-style30 {
            height: 84px;
        }
    </style>
</head>
<body style="height: 701px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style11">
                <tr>
                    <td class="auto-style18">Candidate</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter the candidate name" Height="34px" Width="238px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Candidate Name" ControlToValidate="TextBox3" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">House</td>
                    <td class="auto-style22">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="House" Text="Red" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="House" Text="Blue" />
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="House" Text="Green" />
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="House" Text="Yellow" />
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style28">Class</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter class you studied" Height="38px" Width="238px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="It is a required feild" ControlToValidate="TextBox1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        &nbsp
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="should be between 6-12" ControlToValidate="TextBox1" MaximumValue="12" MinimumValue="6" ForeColor="#FF3300" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Email</td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" ToolTip="Enter Email Id" Height="34px" Width="238px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        &nbsp
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" ControlToValidate="TextBox2" ForeColor="#FF3300" ToolTip="Enter Mail Id"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Validation" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox2" ForeColor="#FF3300" ToolTip="Enter mail Id" ValidationGroup="string"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Button ID="Button1" runat="server" Height="54px" Text="Submit" Width="157px" BackColor="#66CCFF" ForeColor="White" OnClick="Button1_Click" /></td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    <p class="auto-style4">
        &nbsp;</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Errors:" />
    </form>
    </body>
</html>
