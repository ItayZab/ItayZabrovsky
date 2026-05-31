<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        /* עיצוב קל לטבלה כדי שהתמונות יראו טוב וממורכזות */
        .gallery-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 15px; /* רווח בין התמונות */
        }
        .gallery-table td {
            text-align: center;
            vertical-align: middle;
            background-color: #f9f9f9; /* רקע בהיר לכל תא, דומה לטפסים */
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 8px;
        }
        .gallery-img {
            width: 200px; /* הגדרת רוחב קבוע לתמונות */
            height: 150px; /* הגדרת גובה קבוע כדי שהכל יהיה סימטרי */
            object-fit: cover; /* שומר על פרופורציות התמונה ומקצץ שוליים אם צריך */
            border-radius: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h3>Welcome to the Cat Gallery</h3><br />
    <h4>Enjoy our collection of beautiful cat pictures:</h4><br />

    <table class="gallery-table">
        <tr>
            <td>
                <img src="1.jpg" alt="Cat 1" class="gallery-img" /><br />
                <span>Cute Cat 1</span>
            </td>
            <td>
                <img src="2.jpg" alt="Cat 2" class="gallery-img" /><br />
                <span>Cute Cat 2</span>
            </td>
            <td>
                <img src="3.jpg" alt="Cat 3" class="gallery-img" /><br />
                <span>Cute Cat 3</span>
            </td>
        </tr>
        
        <tr>
            <td>
                <img src="4.jpg" alt="Cat 4" class="gallery-img" /><br />
                <span>Cute Cat 4</span>
            </td>
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

</asp:Content>

