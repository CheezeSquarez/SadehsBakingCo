using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Sadehs_Baking_Co
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string UserAlreadyExists = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string tableName = "UserTBL";

            if (Request.Form["sub"] != null)
            {
                string idNum = Request.Form["idNum"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string eMail = Request.Form["eMail"];
                string bDay = Request.Form["bDay"];
                string gender = Request.Form["gender"];
                string pWord = Request.Form["pWord"];
                string uName = Request.Form["uName"];
                
                string fileName = "Users.accdb";
                
                string sql = "SELECT * FROM " + tableName + " WHERE idNum= '" + idNum + "'" ;
                DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);
                if(usersInDB.Rows.Count <= 0)
                {
                    sql = "SELECT * FROM " + tableName + " WHERE eMail= '" + eMail + "'";
                    usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);
                    if(usersInDB.Rows.Count <= 0) {
                        sql = "SELECT * FROM " + tableName + " WHERE uName= '" + uName + "'";
                        if (!MyAdoHelper.IsExist(fileName, sql))
                        {
                            sql = "INSERT INTO UserTBL (idNum, fName, lName, eMail, pWord, gender, bDay, uName) VALUES" +
                               " ( '" + idNum + "', '" + fName + "', '" + lName + "', '" + eMail + "', '" + pWord + "', '" + gender + "', '" + bDay + "', '" + uName + "')";
                            
                            MyAdoHelper.DoQuery(fileName, sql);
                            Session["message"] = "ההרשמה בוצעה בהצלחה!";
                            Response.Redirect("LogIn.aspx");
                        }
                        else
                        {
                            UserAlreadyExists = "<div class='redContainer'>משתמש עם ה ת.ז / כתובת מייל כבר קיים! נסה שוב</div> ";
                        }
                    }
                    else
                    {
                        UserAlreadyExists = "<div class='redContainer'>משתמש עם ה ת.ז / כתובת מייל כבר קיים! נסה שוב</div> ";
                    }
                }
                else
                {
                    UserAlreadyExists = "<div class='redContainer'>משתמש עם ה ת.ז / כתובת מייל כבר קיים! נסה שוב</div> ";
                }


                
            }
        }
    }
}