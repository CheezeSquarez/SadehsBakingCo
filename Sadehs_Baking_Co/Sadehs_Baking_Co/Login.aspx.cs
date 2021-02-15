using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Sadehs_Baking_Co
{
    
    public partial class Login2 : System.Web.UI.Page
    {
        public string firstName;
        public string lastName;
        public string error;


        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Request.Form["sub1"] != null)
            {
                Session["message"] = null;
                string fileName = "Users.accdb";
                string tableName = "UserTBL";
                firstName = "";
                lastName = "";

                string uName = Request.Form["uName"];
                string pWord = Request.Form["pWord"];

                string sql = "SELECT * FROM " + tableName + " WHERE uName='" + uName + "' AND pWord='" + pWord + "'";

                if (uName == "AdminIdo" && pWord == "1")
                {
                    Session["Admin"] = "ok";
                    Response.Redirect("AdminPage.aspx");
                }
                else if (MyAdoHelper.IsExist(fileName, sql))
                {
                    DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);
                    Session["Login"] = Request.Form["uName"];
                    Response.Redirect("ProfilePage.aspx");

                }
                else
                {
                    string errorString = "שם משתמש או סיסמה שגוים. נא נסה שוב!";
                    error = "<div class='redContainer'>" + errorString + " </div>";
                    
                    
                }
            }
        }
    }
}