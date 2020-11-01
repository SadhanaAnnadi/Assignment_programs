<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketBooking.aspx.cs" Inherits="SurprisePrj.TicketBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style3 {
            height: 31px;
            width: 294px;
        }
        .auto-style4 {
            width: 100%;
            height: 500px;
        }
        .auto-style5 {
            height: 14px;
            width: 294px;
        }
        .auto-style6 {
            height: 14px;
        }
        .auto-style7 {
            height: 771px;
        }
        .auto-style20 {
            height: 23px;
            width: 294px;
        }
        .auto-style21 {
            height: 23px;
        }
        .auto-style24 {
            height: 24px;
            width: 294px;
        }
        .auto-style25 {
            height: 24px;
        }
        .auto-style26 {
            height: 25px;
            width: 294px;
        }
        .auto-style27 {
            height: 25px;
        }
        .auto-style28 {
            text-align: center;
        }
        .auto-style29 {
            height: 19px;
            width: 294px;
        }
        .auto-style30 {
            height: 19px;
        }
        .auto-style31 {
            margin-left: 0px;
        }
        .auto-style32 {
            height: 24px;
            width: 347px;
        }
        .auto-style33 {
            height: 25px;
            width: 347px;
        }
        .auto-style34 {
            height: 23px;
            width: 347px;
        }
        .auto-style35 {
            height: 31px;
            width: 347px;
        }
        .auto-style36 {
            height: 14px;
            width: 347px;
        }
        .auto-style37 {
            height: 19px;
            width: 347px;
        }
        .auto-style38 {
            text-align: center;
            height: 27px;
        }
    </style>
</head>
<body style="height: 913px">
    <form id="form1" runat="server">
        <div class="auto-style28">
        <div class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4"  ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Flight_id" HeaderText="Flight_Id" />
                 <asp:BoundField DataField="Flight_name" HeaderText="Flight_Name" />
                 <asp:BoundField DataField="Flight_number" HeaderText="Flight_Number" />
                 <asp:BoundField DataField="Flight_source" HeaderText="Flight_Source" />
                 <asp:BoundField DataField="Flight_destination" HeaderText="Flight_Destination" />
            </Columns>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            <br /><br />
            <table class="auto-style4">
                <tr>
                    <td class="auto-style24" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Passenger Name</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style31" ToolTip="Enter Passenger name" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Age</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style31" ToolTip="Enter passenger Age" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age is Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Gender</td>
                    <td class="auto-style34">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Flight Id</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style31" ToolTip="Enter Flight Id" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Flight Id is Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Flight Name</td>
                    <td class="auto-style36">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style31" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Flight Name is missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Flight number</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style31" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Flight Number is Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">Source</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style31" ToolTip="Enter Source point" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Source is Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase">destination</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style31" ToolTip="Enter Destination Point" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Destination is Missing" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        </div>
        
        <p class="auto-style28">
            <asp:Button ID="Button1" runat="server" BackColor="#009900" BorderColor="#669900" BorderStyle="Solid" ForeColor="Black" Height="50px" OnClick="Button1_Click" Text="Generate Ticket" Width="222px" />
        </p>
        <p class="auto-style38">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Errors:" />
        
    </form>
</body>
</html>
