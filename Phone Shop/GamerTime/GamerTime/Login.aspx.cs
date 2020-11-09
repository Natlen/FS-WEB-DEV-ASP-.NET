using GamerTime.AngularData;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamerTime
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.Form["id"]) || string.IsNullOrEmpty(Request.Form["Password"]))
            {
                resText.Text = "Please fill the form correctly !!.";
                return;
            }
            string id = Request.Form["id"];
            string password = Request.Form["Password"];
            DataSet tbl = sqlConnection.getFromDB(string.Format("Select * from [user] where id={0} AND password='{0}'", id, password));

            /*if (tbl == null || tbl.Tables.Count == 0 || tbl.Tables[0].Rows.Count <= 0)
            {
                resText.Text = "Invilid user !! ";
                return;
            }*/

            if (tbl == null )
            {
                resText.Text = "NULL !! ";
                return;
            }

            else if ( tbl.Tables.Count == 0 )
            {
                resText.Text = "table count == 0  !! ";
                return;
            }


            else if ( tbl.Tables[0].Rows.Count <= 0)
            {
                resText.Text = "tbl.Tables[0].Rows.Count !! ";
                return;
            }
            DataTable res = tbl.Tables[0];
            bool isAdmin = res.Rows[0]["admin"].ToString().Equals("True");
            Session["admin"] = res.Rows[0]["id"];
            if (isAdmin)
                Response.Redirect("admin.aspx");
        }
    }
}