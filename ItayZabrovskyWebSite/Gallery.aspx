<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">

        .gallery-table {
            width: 100%;
            border-collapse: separate; /* Lets each cell maintain a gap between other adjacent cells */
            border-spacing: 15px; /* Spacing between pictures */
        }

        .gallery-table td {
                width: 50%;
                flex-direction: row; /* Standard row alignment (Image left, text right) */
                align-items: center; /* Vertically centers image and text next to each other */
                text-align: left; /* Ensures description text reads cleanly left-to-right */
                background-color: #f9f9f9; /* Adds a background color to the table */
                border: 1px solid #ddd; /* Defines the width, color and style of the table border */
                padding: 15px; /* Slightly more breathing room inside the box */
                border-radius: 8px; /* Makes the corners of each border round */
            }

        .gallery-img {
            width: 200px; /* Sets a constant width for all images */
            height: 150px; /* Sets a constant height for all images */
            object-fit: cover; /* Preserves the image's proportions and crops the edges if necessary */
            border-radius: 4px; /* Makes the corners of each border round */
        }

        .cat-description {
            margin-left: 15px; /* Creates a gap between the image and the text */
            display: flex; /* Forces inner items side-by-side */
            flex-direction: column; /* Allows the text lines to stack on top of each other */
            gap: 5px; /* Adds small spacing between title and subtitle text */
        }

        .cat-title {
            font-weight: bold; /**/
            font-size: 1.1em; /**/
            color: #333; /**/
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome to the Cat Gallery</h3>
    <br />
    <h3>Enjoy our collection of beautiful cat pictures, each with information on the cat breed:</h3>
    <br />

    <table class="gallery-table">
        <tr>
            <td>
                <a href="https://en.wikipedia.org/wiki/Ragdoll">
                    <img class="gallery-img" alt="Ragdoll_Cat_Wikipedia" src="Imgs/Ragdoll%20Cat.jpg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The Ragdoll</span>
                    <span>Lorem Ipsum</span>
                </div>
            </td>
            <td>
                <img src="2.jpg" alt="Cat 2" class="gallery-img" /><br />
                <span>Cute Cat 2</span>
            </td>
        </tr>
        <tr>
            <td>
                <img src="3.jpg" alt="Cat 3" class="gallery-img" /><br />
                <span>Cute Cat 3</span>
            </td>
            <td>
                <img src="4.jpg" alt="Cat 4" class="gallery-img" /><br />
                <span>Cute Cat 4</span>
            </td>
        </tr>
        <tr>
            <td>
                <img src="5.jpg" alt="Cat 5" class="gallery-img" /><br />
                <span>Cute Cat 5</span>
            </td>
            <td>
                <img src="6.jpg" alt="Cat 6" class="gallery-img" /><br />
                <span>Cute Cat 6</span>
            </td>
        </tr>
    </table>
    <br />
    <h3>What is your favourite cat breed from the ones above?</h3>
    <select>
        <option value="">Ragdoll</option>
        <option value=""></option>
        <option value=""></option>
        <option value=""></option>
        <option value=""></option>
        <option value=""></option>
    </select>
</asp:Content>

