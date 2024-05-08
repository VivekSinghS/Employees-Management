<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeFrm.aspx.cs" Inherits="Employees_Management.EmployeeFrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                     <td>Employee Name</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox> </td>
                  
                    
                </tr>
                <tr>
                    <td>Salary</td>
                    <td><asp:TextBox ID="txtSalary" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td> <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td>age</td>
                    <td> <asp:TextBox ID="txtAge" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <asp:Button ID="btnSubmit" runat="server" Text="Submit" onClick="btnSubmit_Click"/> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <asp:GridView ID ="dataView" runat="server" AutoGenerateColumns="false" OnRowCommand="dataView_RowCommand">
                
                     <columns>
                         <asp:TemplateField HeaderText="EmployeeName">
                             <ItemTemplate>
                                 <%#Eval("name") %>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                  <%#Eval("City") %>
                                  </ItemTemplate>
                                 </asp:TemplateField>

                            <asp:TemplateField HeaderText="Salary">
                                   <ItemTemplate>
                                <%#Eval("Salary") %>
                                     </ItemTemplate>
                                  </asp:TemplateField>


                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:LinkButton ID ="btnDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("id")%>'></asp:LinkButton>
                             </ItemTemplate>
                         </asp:TemplateField>
                              </columns>

                </asp:GridView> </td>
                    </tr>
            </table>
        </div>
    </form>
</body>
</html>
