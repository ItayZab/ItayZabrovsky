<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        h3 {
            margin-bottom: 30px; /* Controls the gap between each of the lines of text */
        }

        .LeadDevTextDiv {
            font-size: 15px; /* Sets size of text */
            display: none; /* Hides the text by default */
            position: absolute; /* Allows the text to be positioned relative to the image */
            bottom: 10px; /* Positions text 10px from the bottom of the image */
            right: 10px; /* Positions text 10px from the right edge of the image */
            background-color: rgba(0, 0, 0, 0.7); /* Adds a dark semi-transparent background so text is readable */
            color: white; /* Makes text white */
            white-space: nowrap; /* Keeps text to a single line */
            padding: 8px 12px; /* Adds padding around text */
            border-radius: 4px; /* Rounds the corners of text background */
        }

        .LeadDevImgDiv {
            position: relative; /* Sets the image to be the reference point for absolute positioning of text */
            display: inline-block; /* Allows the image and text to be treated as a single unit */
        }

        .LeadDevImgDiv:hover .LeadDevTextDiv {
            display: block; /* Shows text when hovering over image */
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style = "text-decoration: underline;">Lead Developer:</h1>
    <div class="LeadDevImgDiv">
        <img alt="Lead_Dev" src="Imgs/LeadDev.png" style = "width:200px; height:200px" />
        <div class="LeadDevTextDiv">Itay Zabrovsky</div>
    </div>
    <h1 style = "margin-bottom:20px">Contact us:</h1>
    <h3>Email: itayzabrovsky@gmail.com</h3>
    <h3>Definitely-not-fake phone number: 555-2368</h3>
</asp:Content>

