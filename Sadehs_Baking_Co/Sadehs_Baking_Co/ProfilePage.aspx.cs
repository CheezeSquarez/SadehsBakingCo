using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Sadehs_Baking_Co
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        public string firstName;
        public string lastName;
        public string idNum;
        public string eMail;
        public string gender;
        public string bDay;
        public string uName;
        public string userList;
        public string userAlreadyExists;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Login"] != null) { 
                string fileName = "Users.accdb";
                string tableName = "UserTBL";
                uName = Session["Login"].ToString();

                string sql = "SELECT * FROM " + tableName + " WHERE uName='" + uName + "'";
                DataTable UserInfo = MyAdoHelper.ExecuteDataTable(fileName, sql);

                firstName = "" + UserInfo.Rows[0]["fName"];
                lastName = "" + UserInfo.Rows[0]["lName"];
                idNum = "" + UserInfo.Rows[0]["idNum"];
                eMail = "" + UserInfo.Rows[0]["eMail"];
                gender = "" + UserInfo.Rows[0]["gender"];
                bDay = "" + UserInfo.Rows[0]["bDay"];

                sql = "SELECT * FROM " + tableName + " WHERE uName NOT IN('" + Session["Login"].ToString() + "')";

                DataTable usersInDB = MyAdoHelper.ExecuteDataTable(fileName, sql);

                int length = usersInDB.Rows.Count;
                if (length > 0)
                {
                
                    userList += "<center><table id='customers'>";
                    userList += "<th>שם משתמש</th>";
                    userList += "<th>דואר אלקטרוני</th>";
                    userList += "<th>מגדר</th>";
                    userList += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        userList += "<tr>";
                        userList += "<td>" + usersInDB.Rows[i]["uName"] + "</td>";
                        userList += "<td>" + usersInDB.Rows[i]["eMail"] + "</td>";
                        userList += "<td>" + usersInDB.Rows[i]["gender"] + "</td>";
                        userList += "</tr>";
                    }
                    userList += "</table></center>";


                        if (Request.Form["updateSub"] != null)
                        {
                            bool validValue = true;
                            if (Request.Form["updateField"] == "eMail")
                            {
                                sql = "SELECT * FROM " + tableName + " WHERE eMail= '" + Request.Form["updateValue"] + "' AND uName NOT IN ('" + Session["Login"].ToString() + "')";
                                if (MyAdoHelper.IsExist(fileName, sql))
                                {
                                    validValue = false;

                                }
                            }
                            if (Request.Form["updateField"] == "uName")
                            {
                                sql = "SELECT * FROM " + tableName + " WHERE uName= '" + Request.Form["updateValue"] + "' AND uName NOT IN ('" + Session["Login"].ToString() + "')";
                                if (MyAdoHelper.IsExist(fileName, sql))
                                {
                                    validValue = false;

                                }
                            }
                            if (validValue)
                            {
                                string field = Request.Form["updateField"];
                                string value = Request.Form["updateValue"];
                                sql = "UPDATE " + tableName + " SET " + field + "='" + value + "' WHERE [uName]='" + Session["Login"].ToString() + "'";
                                MyAdoHelper.DoQuery(fileName, sql);
                                if (field == "uName")
                                    Session["Login"] = value;
                                Response.Redirect("ProfilePage.aspx");
                            }
                            else
                            {
                                userAlreadyExists = "<div class='redContainer'>משתמש עם ה ת.ז / כתובת מייל כבר קיים! נסה שוב</div> ";
                            }
                        }   
                }
               
            }
            else
            {
                Session["error"] = "אינך מחובר למשתמש! נא התחבר או צור משתמש!";
                Response.Redirect("Login.aspx");
            }
        }
    }
}


