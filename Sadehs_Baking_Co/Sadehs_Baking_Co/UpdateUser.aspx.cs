using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Sadehs_Baking_Co
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        public string fName;
        public string lName;
        public string idNum;
        public string bDay;
        public string UserAlreadyExists;
        public string uName;
        public string pWord;
        public string gender;
        public string eMail;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {

                idNum = "";
                bDay = "";


                string fileName = "Users.accdb";
                string tableName = "UserTBL";

                string sql = "SELECT * FROM " + tableName + " WHERE uName='" + Session["Login"].ToString() + "'";
                DataTable CurrentUser = MyAdoHelper.ExecuteDataTable(fileName, sql);

                idNum = " " + CurrentUser.Rows[0]["idNum"];
                eMail = " " + CurrentUser.Rows[0]["eMail"];
                gender = " " + CurrentUser.Rows[0]["gender"];
                bDay = " " + CurrentUser.Rows[0]["bDay"];
                uName = " " + Session["Login"].ToString();
                pWord = " " + CurrentUser.Rows[0]["pWord"];
                fName = " " + CurrentUser.Rows[0]["fName"];
                lName = " " + CurrentUser.Rows[0]["lName"];


                sql = "SELECT * FROM " + tableName + " WHERE uName= '" + uName + "' AND uName NOT IN ('" + Session["Login"].ToString() + "')";
                if (!MyAdoHelper.IsExist(fileName, sql))
                {
                    sql = "SELECT * FROM " + tableName + " WHERE eMail= '" + eMail + "' AND uName NOT IN ('" + Session["Login"].ToString() + "')";
                    if (!MyAdoHelper.IsExist(fileName, sql))
                    {
                        sql = "UPDATE " + tableName + " SET [uName]='" + uName + "', [eMail]='" + eMail + "', [gender]='" + gender + "', [pWord]='" + pWord + "' WHERE [uName]='" + Session["Login"].ToString() + "'";
                        MyAdoHelper.DoQuery(fileName, sql);
                        Session["Login"] = uName;
                        Response.Redirect("ProfilePage.aspx");

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
                Session["message"] = "אינך מחובר למשתמש! נא התחבר או צור משתמש!";
                Response.Redirect("Login.aspx");
                
            }
        }
    }
}
