<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Sadehs_Baking_Co.AdminPage" %>
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
            width: 1500px;
            background-color: white;
            border-radius: 12px;
            margin: 20px auto;
            margin-bottom: 70px;
            text-align: center;
            direction: rtl;
            height: auto;
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
        .txt{
            direction:rtl;
            text-align:center;
            font-size:45px;
            color:indianred;
        }
        .SearchForm{
            font-size: 25px;
            text-align:right;
        }


    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <% if (Session["Admin"] != null)
        {%> 
            <div class="conainer_3">
                <h1>דף מנהל</h1>
                <form class="SearchForm" method="post" action="AdminPage.aspx">
                    חפש לפי: <select name="searchType" size="1">
                        <option value="fName">שם פרטי</option>
                        <option value="lName">שם משפחה</option>
                        <option value="uName">שם משתמש</option>
                        <option value="idNum">ת.ז</option>
                        <option value="eMail">מייל</option>
                        <option value="gender">מגדר</option>
                        <option value="bDay">תאריך לידה</option>
                             </select>
                    <br /><br />
                    הזן את מה שתרצה לחפש: <input type="text" name="searchValue" placeholder="הכנס כאן"/>
                    <br /><br />
                    <input type="submit" value="חפש" name="searchSub" />
                    <input type="submit" value="איפס" name="Reset" />
                </form>
               <p class="txt"> <% =userCount %> אנשים רשומים לאתר </p>
                <br /><br /><br />
                <% =userList %>
                <center><h2>מחיקת רשומים</h2></center>
                <form class="deleteForm" method="post" action="AdminPage.aspx">
                    מחק לפי: <select name="deleteType" size="1">
                        <option value="uName">שם משתמש</option>
                        <option value="idNum">תעודת זהות</option>
                        <option value="eMail">כתובת מייל</option>
                             </select>
                    הזן את פרט המשתמש שתרצה למחוק: <input type="text" name="deleteValue" placeholder = "הכנס כאן..." />
                     <input type="submit" value="מחק" name="deleteSub" />
                </form>






            </div>
    <% }
        
    else
    {%>
         <div class="conainer_3" style="width:500px;">

    <form method="post" action="AdminPage.aspx">
        <h1>שם משתמש</h1><br />
        <input type="text" name="uName" placeholder="הכנס כאן" style="height:50px;"/>
        <br /><br />
        <h1>סיסמה</h1><br />
        <input type="password" name="pWord" placeholder="הכנס כאן" style="height:50px;"/><br /><br /><br />
        <input type="submit" name="sub1" value="הכנס" class="subBtn" />

    </form>
        </div>
    <div class="redContainer">
        אינך בדרגת מנהל! נא כנס דרך חשבון המנהל!!!
    </div>
    <% } %>
</asp:Content>
