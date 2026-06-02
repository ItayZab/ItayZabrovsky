<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Login</h3>
    <br />
    <h4>Input your username & password below</h4>
    <br />
<form runat="server" method="post">
    <table>
        <tr>
            <th>Email:</th>
            <td>
                <input type="text" name="mail" id="user" />
            </td>
            <td></td>
        </tr>
        <tr>
            <th>Password:</th>
            <td>
                <input type="password" name="pass" id="pass" />
            </td>
            <td>

            </td>
        </tr>

        <tr>
            <td style="text-align:center;" colspan="2">
                <input type="submit" id="submit1" value="submit" />
            </td>
            <td>
                <input type="reset" value="reset" />
            </td>
        </tr>
    </table>
</form>
<%=st %>
</asp:Content>

