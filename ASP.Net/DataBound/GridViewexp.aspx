<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewexp.aspx.cs" Inherits="DatalistAsgnmt.GridViewexp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="StudentGender" HeaderText="StudentGender" SortExpression="StudentGender" />
                    <asp:BoundField DataField="StudentCity" HeaderText="StudentCity" SortExpression="StudentCity" />
                    <asp:BoundField DataField="StudentPhno" HeaderText="StudentPhno" SortExpression="StudentPhno" />
                    <asp:BoundField DataField="StudentRollNo" HeaderText="StudentRollNo" SortExpression="StudentRollNo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_detailsConnectionString %>" SelectCommand="SELECT * FROM [Student_details]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
