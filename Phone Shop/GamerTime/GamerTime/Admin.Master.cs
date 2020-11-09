using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamerTime
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || Session["admin"].Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Session.Clear();
                Session.Abandon();
                Response.Redirect("index.aspx");
            }
        }
    }
}