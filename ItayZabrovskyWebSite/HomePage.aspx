<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        li {
            margin-bottom: 5px; /* Sets space below each bullet list item */
        }
        h4 {
            margin-bottom: 12px; /* Sets space below each header */
            margin-top: 0px; /* Sets space above each header */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style = "text-decoration:underline">Welcome to Cute Cat Pictures!</h1>
    <h4>In this website you can find:</h4>
    <ul>
        <li>Free pictures of cat breeds!</li>
        <li>Information on each cat breed in every photo!</li>
        <li>Did we mention it is all FREE?</li>
        <li>Beautiful background of a random cat paw png we found on the internet!</li>
    </ul>
    <textarea>
        Please enjoy our website, and if you have any questions or suggestions, feel free to contact us through our Email: itayzabrovsky@gmail.com.
    </textarea>
</asp:Content>

