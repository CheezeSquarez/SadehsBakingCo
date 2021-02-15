<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="גלריה.aspx.cs" Inherits="Sadehs_Baking_Co.גלריה" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        imgContainer{
            background: #fff;
            width:auto;
            text-align:center;
        }
    </style>
    <div class="container_2" style="align-content:center; text-align:center;">
        <table align="center" style="width:1200px; height:100%; background-color:white;">
            <tr>
                <td>
                    <img src="Cookie1.jpg" style="width:250px; cursor:pointer;" onmouseover="changeIMG(this)"/>
                </td>
                <td>
                    <img src="dCookie1.jpg" style="width:250px; cursor:pointer;" onmouseover="changeIMG(this)"/>
                </td>
                <td>
                   <img src="pancakes1.jpg" style="width:250px; cursor:pointer;" onmouseover="changeIMG(this)" />
                </td>
            </tr>
        </table>
        <div class="imgContainer">
            <img id="expandedImg" style="width:75%" />
        </div>
        




    </div>




    <script type="text/javascript">
        function changeIMG(img) {
            var expandedImg = document.getElementById("expandedImg")
            expandedImg.src = img.src
        }
    </script>

</asp:Content>
