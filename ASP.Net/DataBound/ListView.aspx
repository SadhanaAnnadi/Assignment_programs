<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="DatalistAsgnmt.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <li style="">StudentId:
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
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">StudentId:
                        <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                        <br />
                        StudentName:
                        <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
                        <br />
                        StudentGender:
                        <asp:TextBox ID="StudentGenderTextBox" runat="server" Text='<%# Bind("StudentGender") %>' />
                        <br />
                        StudentCity:
                        <asp:TextBox ID="StudentCityTextBox" runat="server" Text='<%# Bind("StudentCity") %>' />
                        <br />
                        StudentPhno:
                        <asp:TextBox ID="StudentPhnoTextBox" runat="server" Text='<%# Bind("StudentPhno") %>' />
                        <br />
                        StudentRollNo:
                        <asp:TextBox ID="StudentRollNoTextBox" runat="server" Text='<%# Bind("StudentRollNo") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">StudentId:
                        <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                        <br />StudentName:
                        <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
                        <br />StudentGender:
                        <asp:TextBox ID="StudentGenderTextBox" runat="server" Text='<%# Bind("StudentGender") %>' />
                        <br />StudentCity:
                        <asp:TextBox ID="StudentCityTextBox" runat="server" Text='<%# Bind("StudentCity") %>' />
                        <br />StudentPhno:
                        <asp:TextBox ID="StudentPhnoTextBox" runat="server" Text='<%# Bind("StudentPhno") %>' />
                        <br />StudentRollNo:
                        <asp:TextBox ID="StudentRollNoTextBox" runat="server" Text='<%# Bind("StudentRollNo") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
<br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="">StudentId:
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
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="">StudentId:
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
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_detailsConnectionString %>" SelectCommand="SELECT * FROM [Student_details]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
