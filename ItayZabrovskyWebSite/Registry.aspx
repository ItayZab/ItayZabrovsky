<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registry.aspx.cs" Inherits="Registry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">
        function checkAll() {
            userErr.innerHTML = "";
            passErr.innerHTML = "";

            result = true;

            if (checkUsername() == false)
                result = false;
            if (checkPassword() == false)
                result = false;

            return result;
        }

        function checkUsername() {
            var user = document.getElementById("user").value;
            var errSpace = document.getElementById("userErr");

            if (user.length == 0) {
                errSpace.innerHTML = "Username cannot be empty";
                errSpace.style.color = "red";
                return false;
            }
            if (user.length < 2) {
                errSpace.innerHTML = "Username must be at least 2 characters long";
                errSpace.style.color = "red";
                return false;
            }
            if (user.length > 20) {
                errSpace.innerHTML = "Username length cannot exceed 20 characters";
                errSpace.style.color = "red";
                return false
            }
            for (var i = 0; i < user.length; i++) {
                var asciiValue = user.charCodeAt(i);
                if (asciiValue < 65 || asciiValue > 90 && asciiValue < 97 || asciiValue > 122) {
                    errScape.innerHTML = "Username cannot contain special characters or numbers";
                    errSpace.style.color = "red";
                    return false;
                }
            }
            return true;
        }

        function checkPassword() {
            var pass = document.getElementById("pass").value;
            var errSpace = document.getElementById("passErr");

            if (pass.length == 0) {
                errSpace.innerHTML = "Password cannot be empty";
                errSpace.style.color = "red";
                return false;
            }
            if (pass.length < 6) {
                errSpace.innerHTML = "Password must be at least 6 characters long";
                errSpace.style.color = "red";
                return false;
            }
            var hasSpecialChar = false;
            for (var i = 0; i < pass.length; i++) {
                var asciiValue = pass.charCodeAt[i];
                if (!(code >= 48 && code <= 57) && !(code >= 65 && code <= 90) && !(code >= 97 && code <= 122)) {
                    hasSpecialChar = true;
                    break;
                }
            }
            if (!hasSpecialChar) {
                errSpace.innerHTML = "Password must contain at least 1 special character";
                errSpace.style.color = "red";
                return false;
            }
            return true;
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h3>Register now and gain access to many cat pictures for free</h3><br />
        <h4>Create your username & password, and input an Email:</h4><br />
    <form runat="server" method="post" onsubmit="return checkAll();">
        <table>
            <tr>
                <th>Username:</th>
                <td>
                    <input type="text" name="user" id="user" />
                </td>
                <td id="userErr"></td>
            </tr>
            <tr>
                <th>Password:</th>
                <td>
                    <input type="text" name="pass" id="pass" />
                </td>
                <td id="passErr"></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="mail" id="mail" />
                </td>
                <td id="mailErr"></td>
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

