<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sadehs_Baking_Co.Login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        @font-face {
            src: url(fonts/DanaYadAlefAlefAlef-Normal.otf);
            font-family: dana;
        }
        h1 {
            font-size:40px;
            font-family:dana;

        }
        .conainer_3 {
            padding: 50px;
            width: 600px;
            background-color: white;
            border-radius: 12px;
            margin: 20px auto;
            margin-bottom: 70px;
            text-align: center;
            direction: rtl;
            height: auto;
        }
         .subBtn {
             
            width:90px;
            height: 50px;
            background-color:antiquewhite;
            font-family: Arial;
            text-align:center;
            transition:0.3s;
            border-radius: 8px;

        }
        .subBtn:hover{
            opacity:0.7;

        }
        input{
             border: 3px solid lightgray;
             outline:none;
             transition:0.4s ease-in-out;
        }
        input[type=text]:focus 
        {
            border: 3px solid #555;
            outline:none;

        }
        input[type=password]:focus 
        {
            border: 3px solid #555;
            outline:none;
        }
        input[type=text]::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:20px;
        } 
        input[type=password]::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:20px;
        } 
        .redContainer{
            padding: 50px;
            width: 600px;
            background-color: red;
            border-radius: 12px;
            margin: 20px auto;
            margin-bottom: 70px;
            text-align: center;
            direction: rtl;
            height: auto;
            color:white;
            font-family:Arial;
            font-size:30px;
        }
        .greenContainer{
            padding: 50px;
            width: 600px;
            background-color: #00e640;
            border-radius: 12px;
            margin: 20px auto;
            margin-bottom: 70px;
            text-align: center;
            direction: rtl;
            height: auto;
            color:white;
            font-family:Arial;
            font-size:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%if (Session["message"] != null) { %>
                <div class="greenContainer"> <% =Session["message"].ToString() %> </div>
            <%  Session["message"] = null; } 
      if (Session["error"] != null) { %>
                <div class="redContainer"> <% =Session["error"].ToString() %> </div>
                
            <% Session["error"] = null; } %>
     <div class="conainer_3">

        <% if (Session["Login"] == null && Session["Admin"] == null)
            { %>
    <form method="post" action="Login.aspx">
        <h1>שם משתמש</h1><br />
        <input type="text" name="uName" placeholder="הכנס כאן" style="height:50px; width:250px;"/>
        <br /><br />
        <h1>סיסמה</h1><br />
        <input type="password" name="pWord" placeholder="הכנס כאן" style="height:50px; width:250px;" id="pWord" ;"/><br />
        
        <input type="checkbox" onclick="myFunction()"> הצג סיסמה
        <br /><br />

        <input type="submit" name="sub1" value="הכנס" class="subBtn"/>
        <script>
                function myFunction() {
                  var x = document.getElementById("pWord");
                  if (x.type === "password") {
                    x.type = "text";
                  } else {
                    x.type = "password";
                  }
                }

        </script>
       

    </form>

        <% }
    else
    {%>
        <form method="post" action="AboutUs.aspx">
            <h1>התנתקות</h1>
            <input type="submit" name="sub2" value="התנתקות" class="subBtn" />
        </form>
        <% } %>
        </div>
    <% =error %>
</asp:Content>
