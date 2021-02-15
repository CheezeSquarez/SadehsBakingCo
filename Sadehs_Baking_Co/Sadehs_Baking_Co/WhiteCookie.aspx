<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WhiteCookie.aspx.cs" Inherits="Sadehs_Baking_Co.WhiteCookie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Recipe.css" rel="stylesheet" />
    <style>
        .imgHead{
    width:1100px;
    text-align:center;
}
        .ingridients{
            direction:rtl;
            letter-spacing:1px;
            position:relative;
            font-size:30px;
            width:1200px;
            top:-500px;
        }
        .process{
            position:relative;
            top:-550px;
            direction:rtl;
            font-size:27px;
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
            height:2000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conainer_3">
         <h1 style="text-align:center; font-size:50px; ">עוגיות צ'וקלט צ'יפס</h1>
        <p style="text-align:center; top:-20px;">
            <img src="Cookie%20header.jpg" class="imgHead" /></p>
        <br />
        <p class="ingridients">
            <img src="cookiesBaking.gif" style="position:relative; top:600px; right:350px; width:825px; border-radius:12px;"/><br />
           מצרכים<br /><br />
           > 1 כוס חמאה (רכה)<br /><br />
           > 1 כוס סוכר לבן<br /><br />
           > 1 כוס סוכר חום<br /><br />
           > 2 ביצים<br /><br />
           > 2 כפיות תמצית וניל<br /><br />
           > 1 כפית אבקת סודה לשתייה<br /><br />
           > 2 כפיות מים רותחים<br /><br />
           > 1/2 כפית מלח<br /><br />
           > 3 כוסות קמח<br /><br />
           > 2 כוסות שבבי שוקולד<br /><br />
           > 1 כוס אגוזי מלך (לא חובה)<br />
        </p>
        <hr style="position:relative; top:-500px;"/>
        <h1 style="font-size:40px; position: relative; top:-500px;">אופן ההכנה</h1>
        <p class="process">
            <br /><br />
            מחממים תנור לחום של 350 מעלות (175 מעלות צלזיוס).
ערבב  את החמאה, הסוכר הלבן והסוכר החום עד לקבלת תערובת חלקה. מקציפים פנימה את הביצים אחת אחת, ואז מערבבים פנימה את הווניל. 
ממיסים סודה לשתייה במים חמים. מוסיפים לבלילה יחד עם מלח. מערבבים פנימה קמח, שוקולד צ'יפס ואגוזים. שים כדורים קטנים של הבצק על תבנית עם נייר אפייה.
אופים כ 10 דקות בתנור שחומם מראש, או עד שהקצוות משחים יפה.
        </p>
       
       
        
    </div>
</asp:Content>
