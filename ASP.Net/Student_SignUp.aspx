<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_SignUp.aspx.cs" Inherits="Student_RegForm.Student_SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            width: 734px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">FirstName</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter First Name"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">LastName</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter Last Name"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Fathers Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter Your Father's name"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Father Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mothers name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" ToolTip="Enter your mother's name"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mother Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender</td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="Rbtnmale" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="Rbtnfemale" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Aggregate</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server" ToolTip="Enter your percentage"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This Field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Should be above 55%" ForeColor="#FF3300" MaximumValue="100" MinimumValue="55" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Courses</td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="Rbtncse" runat="server" GroupName="Course" Text="CSE" />
                        <asp:RadioButton ID="Rbtnece" runat="server" GroupName="Course" Text="ECE" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">ECE</td>
                    <td class="auto-style2">
                        <asp:CheckBox ID="CheckBox1_ECE" runat="server" Text="MicroController" OnCheckedChanged="CheckBox1_ECE_CheckedChanged" />
                        <asp:CheckBox ID="CheckBox2_ECE" runat="server" Text="Logic Design" />
                        <asp:CheckBox ID="CheckBox3_ECE" runat="server" Text="Analog Communications" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">CSE</td>
                    <td class="auto-style2">
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Computer Operating Architecture" />
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Data Structures" />
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Computer Networks" />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Submit" Width="141px" />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Errors:" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
