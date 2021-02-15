using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Sadehs_Baking_Co
{

    
    public partial class AdminPage : System.Web.UI.Page
    {
        public string userList;
        public string userCount;
        protected void Page_Load(object sender, EventArgs e)

        {
            string fileName = "Users.accdb";
            string tableName = "UserTBL";
            userList = "";

            string sql = "SELECT * FROM " + tableName;

            if(Request.Form["searchSub"] != null)
            {
                string searchValue = Request.Form["searchValue"];
                if(searchValue != "")
                {
                    sql = "SELECT * FROM " + tableName + " WHERE " + Request.Form["searchType"] + "='" + searchValue + "'" ;
                }
            }

            if(Request.Form["Reset"] != null)
            {
                sql = "SELECT * FROM " + tableName;
            }

            if(Request.Form["deleteSub"] != null)
            {
                string deleteValue = Request.Form["deleteValue"];
                string deleteSql = "DELETE FROM " + tableName + " WHERE " + Request.Form["deleteType"] + "='" + deleteValue + "'";
                MyAdoHelper.DoQuery(fileName, deleteSql);

            }

            DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);

            int length = usersInDB.Rows.Count;
            if (length > 0)
            {
                userList += "<center><table id='customers'>";
                userList += "<tr><th>תעודת זהות</th>";
                userList += "<th>שם פרטי</th>";
                userList += "<th>שם משפחה</th>";
                userList += "<th>דואר אלקטרוני</th>";
                userList += "<th>סיסמה</th>";
                userList += "<th>מגדר</th>";
                userList += "<th>תאריך לידה</th>";
                userList += "<th>שם משתמש</th>";
                userList += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    userList += "<tr>";
                    userList += "<td>" + usersInDB.Rows[i]["idNum"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["fName"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["lName"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["eMail"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["pWord"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["gender"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["bDay"] + "</td>";
                    userList += "<td>" + usersInDB.Rows[i]["uName"] + "</td>";
                    userList += "</tr>";
                }
                userList += "</table></center>";
                userCount = length.ToString();


            }










            if (Request.Form["sub1"] != null)
            {
                string uName = Request.Form["uName"];
                string pWord = Request.Form["pWord"];

                if (uName == "Ido" && pWord == "1")
                {
                    Session["Login"] = "ok";
                    Response.Redirect("AboutUs.aspx");
                }
                else if (uName == "AdminIdo" && pWord == "1")
                {
                    Session["Admin"] = "ok";
                    Response.Redirect("AdminPage.aspx");
                }
                {
                    Response.Redirect("loginFail.aspx");
                }
                if (Request.Form["sub2"] != null)
                {
                    Session.Abandon();
                    Response.Redirect("AboutUs.aspx");
                }

            }
        }
    }
}