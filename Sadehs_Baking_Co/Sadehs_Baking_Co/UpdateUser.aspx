<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="Sadehs_Baking_Co.UpdateUser" %>
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
        <div class="conainer_3">
        <h1>עדכון פרטי משתמש</h1>

            

        
        
        
        <br /><br /><br />
        <input type="submit" class="button" name="updateSub" value="עידכון"/>
        <input type="reset" class="button" name="reset" value="איפוס טופס" />
            </form>
            <% =UserAlreadyExists %>

    </div>
</asp:Content>
