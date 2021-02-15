<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Sadehs_Baking_Co.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            @font-face {
            src: url(fonts/DanaYadAlefAlefAlef-Normal.otf);
            font-family: dana;
        }
        .conainer_3 {
            padding: 50px;
            width: 1200px;
            background-color: white;
            border-radius: 12px;
            margin: 20px auto;
            margin-bottom: 70px;
            text-align: right;
            direction: rtl;
            height: auto;
            direction:rtl;
            font-size:35px;
        }
        .UpdateUserButton{
            width: auto;
            height:300px;
            font-size: 30px;
            background-color: #f3f1ef;
            transition: ease-in-out 0.3s;
            border: 3px solid #555;
            outline: none;
            padding: 8px;
        }
        .UpdateUserButton:hover {
            border: 3px solid #2e3131;
            outline:none;
        }
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            background-color:#b2bec3;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            font-size:25px;
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #4CAF50;
            color: white;
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
        input{
            font-size:35px;
            width:100px;
        }
        .button{
            width:90px;
            height: 50px;
            background-color: bisque;
            font-family: Arial;
            text-align:center;
            transition:0.3s;
            border-radius: 8px;

        }
        .button:hover{
            background-color:antiquewhite;
            border: solid 1px black;
            border-radius:14px;

        }
        input[type=text]{
            border: 3px solid lightgray;
            outline:none;
            transition:0.4s ease-in-out;
            font-size:25px;
            width:500px;
            height:50px;
        }   
        input[type=text]:focus 
        {
            border: 3px solid #555;
            outline:none;

        }
        input[type=text]::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:30px;
        } 
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="conainer_3">
       <center><h1>עמוד פרופיל</h1></center>
        <p>שלום <% =firstName %> <% =lastName %>!</p>
       <br />
       <hr />
       <p>
           פרטי חשבון: <br />
       דוא"ל: <%=eMail %>
       <br />
       ת.ז.: <%=idNum %>
       <br />
       מגדר: <%=gender %>
       <br />
       תאריך לידה: <%=bDay %>
       <br />
       שם משתמש: <%=uName %>
       </p>
       
       <br /><hr /><br />
       <h1>משתמשים אחרים</h1>
       <% =userList %>
       <br /><br /><br />
       <form action="ProfilePage.aspx" method="post">
           <% =userAlreadyExists %>
           עדכן את: <select name="updateField" size="1">
            <option value="uName">שם משתמש</option>
            <option value="eMail">מייל</option>
            <option value="gender">מגדר</option>
                    </select>
            <br /><br />
            הזן את מה שתרצה לעדכן: <input type="text" name="updateValue" placeholder="הכנס כאן"/>
            <br /><br />
            <input type="submit" value="עדכן" name="updateSub" class="button" />
       </form>

   </div>
</asp:Content>
