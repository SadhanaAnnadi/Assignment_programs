<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="DatalistAsgnmt.DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    StudentId:
                    <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    <br />
                    StudentName:
                    <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                    <br />
                    StudentGender:
                    <asp:Label ID="StudentGenderLabel" runat="server" Text='<%# Eval("StudentGender") %>' />
                    <br />
                    StudentCity:
                    <asp:Label ID="StudentCityLabel" runat="server" Text='<%# Eval("StudentCity") %>' />
                    <br />
                    StudentPhno:
                    <asp:Label ID="StudentPhnoLabel" runat="server" Text='<%# Eval("StudentPhno") %>' />
                    <br />
                    StudentRollNo:
                    <asp:Label ID="StudentRollNoLabel" runat="server" Text='<%# Eval("StudentRollNo") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_detailsConnectionString %>" SelectCommand="SELECT * FROM [Student_details]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
