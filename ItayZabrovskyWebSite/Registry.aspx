<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registry.aspx.cs" Inherits="Registry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h3>Register now and gain access to many cat pictures for free</h3><br />
        <h4>Create your username & password, and input an Email:</h4><br />
    <form runat="server" method="post">
        <table>
            <tr>
                <th>Username:</th>
                <td>
                    <input type="text" name="user" id="user" />
                </td>
                <td></td>
            </tr>
            <tr>
                <th>Password:</th>
                <td>
                    <input type="text" name="pass" id="pass" />
                </td>
                <td></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="mail" id="mail" />
                </td>
                <td></td>
            </tr>
            <tr>
                <th>Gender:</th>
                <td>
                    <input type="radio" name="gender" id="m" value="m" />Male<br />
                    <input type="radio" name="gender" id="f" value="f" />Female<br />
                    <input type="radio" name="gender" id="h" value="h" />Other
                </td>
                <td></td>
            </tr>
            <tr>
                <td style: "text-align:center" colspan="2">
                    <input type="submit" id="submit1" value="submit"  />
                </td>
                <td>
                    <input type="reset" value="reset" />
                </td>
            </tr>
        </table>
    </form>
    <%=st %>
</asp:Content>

