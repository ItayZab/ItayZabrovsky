<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">

        .gallery-table {
            width: 100%; /* Controls the width of the table itself */
            border-collapse: separate; /* Lets each cell maintain a gap between other adjacent cells */
            border-spacing: 15px; /* Spacing between pictures */
        }

        .gallery-table td {
                width: 50%; /* Controls the width of each individual cell */
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
            font-weight: bold; /* Changes the weight of the font of the text, making it bold (ctrl + B) */
            font-size: 1.1em; /* Controls the size of the characters in the text */
            color: #333; /* Controls the color of the characters in the text */
        }

        .so-many-flexboxes {
            display: flex; /* Enables Flexbox layout for everything in the div */
            flex-direction: row; /* Stacks the text and dropdownlist horizontally */
            align-items: center; /* Aligns items to the left */
            gap: 10px; /* Adds spacing between the heading and dropdown */
            margin-bottom: 80px; /* Adds a gap between the bottom of the text & dropdown list to the bottom of the page */
        }

        .so-many-flexboxes h3 {
            margin: 0px; /* Adds a margin on bottom & top of text (in this case makes it nonexistent) */
            padding: 0px; /* Adds a space between the content of a container to its border (in this case making it nonexistent) */
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
                    <span>
                        These are large, heavily built cats with a remarkably soft semi-long coat and striking, vivid blue oval eyes.
                        They were named "Ragdoll" because of their unique tendency to go completely limp and relaxed in your arms when picked up.
                    </span>
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
                    <span>
                        They are massive, rugged cats featuring a shaggy weather-resistant coat, a long bushy tail, and large tufted ears adapted for cold weather.
                        Their name combines their presumed state of origin (Maine) with an old folktale that they were the result of a cross between a semi-wild cat and a raccoon.
                    </span>
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
                    <span>
                        They have a compact, heavily boned body with a round head, a distinctively flat face, and a short, incredibly dense "plush" coat.
                        They were named "Exotic" because they introduced an unusual, foreign shorthair look to the Persian breed line during experimental breeding programs in the 1960s.
                    </span>
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
                    <span>
                        This breed is famous for its long, flowing, luxurious double coat, stubby legs, and a wide, flat face with a tiny button nose.
                        They are named directly after their historical country of origin, Persia (modern-day Iran), from where they were first imported to Europe in the 1600s.
                    </span>
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
                    <span>
                        They possess a unique "elfin" appearance characterized by oversized ears, prominent cheekbones, and a short, fragile coat of rippled, wavy fur.
                        The name highlights Devonshire, England, where the foundational kitten of the breed was discovered, combined with "Rex," a genetic term used for animals born with curly fur.
                    </span>
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
                    <span>
                        They feature a sturdy, muscular "cobby" build with a broad chest, a perfectly round head, chubby cheeks, and a very thick, crisp coat.
                        They are named for being the native, standardized version of the traditional domestic shorthaired alley cats found across Great Britain.
                    </span>
                </div>
                </div>
            </td>
        </tr>
    </table>
    <br />
    <div class="so-many-flexboxes">
    <h3>What is your favourite cat breed from the ones above:</h3>
    <select>
        <option value="" selected disabled hidden>Select cat breed here</option>
        <%--The selected tag makes this option be the first to show up in the box of the dropdownlist.--%>
        <%--The disabled tag makes users unable to choose the option in the dropdownlist.--%>
        <%--Do note that without adding the hidden tag, the disabled option can still be seen inside--%>
        <%--the table of options for the dropdownlist.--%>
        <%--To make the option not show up, we add the hidden tag, which makes it it not show up in--%>
        <%--the table of choices of the dropdownlist.--%>
        <option value="">Ragdoll</option>
        <option value="">Maine Coon</option>
        <option value="">Exotic Shorthair</option>
        <option value="">Persian Cat</option>
        <option value="">Devon Rex</option>
        <option value="">British Shorthair</option>
    </select>
    </div>
</asp:Content>

