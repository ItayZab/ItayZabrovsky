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

        .lets-me-use-flexbox-properties {
            display: flex; /* Enables Flexbox layout for the container */
            flex-direction: row; /* Standard row alignment (Image left, text right) */
            align-items: center; /* Vertically centers image and text next to each other */
        }

        .gallery-img {
            width: 200px; /* Sets a constant width for all images */
            height: 150px; /* Sets a constant height for all images */
            object-fit: contain; /* Preserves the image's proportions and crops the edges if necessary */
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

        .so-many-flexboxes {
            display: flex; /* Enables Flexbox layout for everything in the div */
            flex-direction: row; /* Stacks the text and dropdownlist horizontally */
            align-items: center; /* Aligns items to the left */
            gap: 10px; /* Adds spacing between the heading and dropdown */
        }

        .so-many-flexboxes h3 {
            margin: 0px; /* Adds a margin on bottom & top of text (in this case makes it nonexistent) */
            padding: 0px; 
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
                <div class="lets-me-use-flexbox-properties">
                <a href="https://en.wikipedia.org/wiki/Ragdoll">
                    <img class="gallery-img" alt="Ragdoll_Cat_Wikipedia" src="Imgs/Ragdoll%20Cat.jpg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The Ragdoll</span>
                    <span>Lorem Ipsum</span>
                </div>
                </div>
            </td>
            <td>
                <div class="lets-me-use-flexbox-properties">
                <a href="https://en.wikipedia.org/wiki/Maine_Coon">
                    <img class="gallery-img" alt="Maine_Coon_Cat_Wikipedia" src="Imgs/MaineCoon.jpeg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The Maine Coon</span>
                    <span>Lorem Ipsum</span>
                </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="lets-me-use-flexbox-properties">
                <a href="https://en.wikipedia.org/wiki/Exotic_Shorthair">
                    <img class="gallery-img" alt="Exotic_Shorthair_Cat_Wikipedia" src="Imgs/ExoticShorthair.jpg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The Exotic Shorthair</span>
                    <span>Lorem Ipsum</span>
                </div>
                </div>
            </td>
            <td>
                <div class="lets-me-use-flexbox-properties">
                <a href="https://en.wikipedia.org/wiki/Persian_cat">
                    <img class="gallery-img" alt="Persian_Cat_Wikipedia" src="Imgs/PersianCat.jpg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The Persian Cat</span>
                    <span>Lorem Ipsum</span>
                </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="lets-me-use-flexbox-properties">
                <a href="https://en.wikipedia.org/wiki/Devon_Rex">
                    <img class="gallery-img" alt="Devon_Rex_Cat_Wikipedia" src="Imgs/DevonRex.jpeg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The Devon Rex</span>
                    <span>Lorem Ipsum</span>
                </div>
                </div>
            </td>
            <td>
                <div class="lets-me-use-flexbox-properties">
                <a href="https://en.wikipedia.org/wiki/British_Shorthair">
                    <img class="gallery-img" alt="British_Shorthair_Cat_Wikipedia" src="Imgs/BritishShorthair.jpg" />
                </a>
                <div class="cat-description">
                    <span class="cat-title">The British Shorthair</span>
                    <span>Lorem Ipsum</span>
                </div>
                </div>
            </td>
        </tr>
    </table>
    <br />
    <div class="so-many-flexboxes">
    <h3>What is your favourite cat breed from the ones above:</h3>
    <select>
        <option value="" selected disabled>Select cat breed here</option>
        <option value="">Ragdoll</option>
        <option value="">Maine Coon</option>
        <option value="">Exotic Shorthair</option>
        <option value="">Persian Cat</option>
        <option value="">Devon Rex</option>
        <option value="">British Shorthair</option>
    </select>
    </div>
</asp:Content>

