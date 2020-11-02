<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="student.StudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 288px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rp1" runat="server">
                <HeaderTemplate>
                    <table style="width:200px; padding-top:0px; background-color:burlywood">
                        <tr>
                            <td style="font-size:20px; text-align:center; height:48px">
                                <asp:Label ID="Lbl1" runat="server" Text="Student Details"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                 
                <ItemTemplate>
            <table style="width:100%;border:2px solid red;text-align:left;border-radius:2px;
                padding-top:2px; background-color:aquamarine;font-size:20px">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="StudentID"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("StudentID")%>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="StudentName"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("StudentName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="StudentEmail"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("StudentEmail") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="StudentMobileNum"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("StudentMobileNum") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="StudentGender"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text='<%#Eval("StudentGender") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="StudentRollNo"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text='<%#Eval("StudentRollNo") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="StudentAddress"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text='<%#Eval("StudentAddress") %>'></asp:Label>
                    </td>
                </tr>
            </table>
                   
              </ItemTemplate>  
            
            </asp:Repeater>
               

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTableConnectionString %>" SelectCommand="SELECT * FROM [StudentTable]"></asp:SqlDataSource>
    </form>
</body>
</html>
