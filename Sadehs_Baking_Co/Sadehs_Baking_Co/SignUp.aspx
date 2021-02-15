<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Sadehs_Baking_Co.WebForm1" %>
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
        body{
            
        }
        input{
            font-size:35px;
            width:100px;
        }
        .button{
            width:90px;
            height: 50px;
            background-color:bisque;
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
         input[type=text], input[type=email]{
             border: 3px solid lightgray;
             outline:none;
             transition:0.4s ease-in-out;
             font-size:25px;
             width:500px;
             height:50px;
        }
         input[type=password]{
             border: 3px solid lightgray;
             outline:none;
             transition:0.4s ease-in-out;
             font-size:25px;
             width:500px;
             height:50px;
        }
         textarea{
             border: 3px solid lightgray;
             outline:none;
             transition:0.4s ease-in-out;
             font-family:dana;
             resize:none;
             
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
         input[type=email]:focus 
        {
            border: 3px solid #555;
            outline:none;

        }
        textarea:focus 
        {
            border: 3px solid #555;
            outline:none;
        }
        input[type=text]::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:30px;
        } 
         input[type=email]::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:30px;
        } 
        textarea::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:30px;
        }
        input[type=password]::-webkit-input-placeholder 
        { 
             font-family:dana;
             font-size:30px;
        } 

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% =UserAlreadyExists %>
    <div class="conainer_3">
    
        

        <h1>הרשמה לאתר</h1>
        <form action="SignUp.aspx" method="post" id="signUp">
        שם פרטי:     <input type="text" name="fName" placeholder="הכנס כאן" required/>
        <br /><br />
        שם משפחה:     <input type="text" name="lName" placeholder="הכנס כאן" required/>
            <br /><br />
        שם משתמש: <input type="text" name="uName" placeholder="הכנס כאן" required/>
        <br /><br /><br /><br />
        כתובת דוא"ל: <input type="email" name="eMail" pattern="[^ @]*@[^ @]*" placeholder="הכנס כאן" title="כתובת המייל אינו תקין" required>
        <br /><br /><br />
            סיסמה: <input type="password" name="pWord" placeholder="הכנס כאן" required/>
            <br /><br /><br /><br />
       תעודת זהות: <input type="text" name="idNum" placeholder="הכנס כאן" required/>
        <br /><br /><br /><br />
        תאריך לידה: <input type="date" name="bDay"  style="color:#7f8c8d; width:350px;" required/ >
            <br /><br />
        <h2>מגדר</h2>
        זכר<input type="radio" name="gender" value="זכר" required/> 
        נקבה<input type="radio" name="gender" value="נקבה" required/> 
        לא מזדהה<input type="radio" name="gender" value="לא מזדהה" required/> 
            

        
        
        
        <br /><br /><br />
        <input type="submit" class="button" name="sub" value="סיום" onclick="return check()"/>
        <input type="reset" class="button" name="reset" value="איפוס טופס" />
            </form>
        </div>
    <br />

    <script type="text/javascript">
        function check()
        {

            var Form = document.getElementById("signUp");
            var fName = Form.fName.value;
            for (var i = 0; i < fName.length; i++) {
                if (fName.charAt(i) < 'a' && fName.charAt(i) > 'z' && fName.charAt(i) < 'A' && fName.charAt(i) > 'Z') {
                    alert("Invalid Name!" + fName.charAt(i))
                    return false;
                }
            }

            var lName = Form.lName.value;
            for (var i = 0; i < lName.length; i++) {
                if (lName.charAt(i) < 'a' && lName.charAt(i) > 'z' && lName.charAt(i) < 'A' && lName.charAt(i) > 'Z') {
                    alert("Invalid last Name!" + lName.charAt(i))
                    return false;
                }
            }
            
            var idNum = Form.idNum.value;
            for (var i = 0; i < idNum.length; i++) {
                if ((idNum.charAt(i) < '0' && idNum.charAt(i) > '9') && idNum.length != 9) {
                    alert("Invalid id!")
                    return false;
                }
            }

            return true;

        }

    </script>
      
    
   
</asp:Content>
