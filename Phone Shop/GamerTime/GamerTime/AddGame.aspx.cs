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
    public partial class AddGame : System.Web.UI.Page
    {
        public void ldCategoryList()
        {
            DataTable table = new DataTable();
            table.Columns.Add("key", typeof(string));
            table.Columns.Add("value", typeof(string));
            table.Rows.Add("Action", "Action");
            table.Rows.Add("Sports", "Sports");
            table.Rows.Add("Strategy", "Strategy");

            CategoryList.DataSource = table;
            CategoryList.DataTextField = "key";
            CategoryList.DataValueField = "value";
            CategoryList.DataBind();
            
        }

        
        public void ldRatingList()
        {
            DataTable table = new DataTable();
            table.Columns.Add("key", typeof(int));
            table.Columns.Add("value", typeof(int));
            table.Rows.Add(1, 1);
            table.Rows.Add(2, 2);
            table.Rows.Add(3, 3);
            table.Rows.Add(4, 4);
            table.Rows.Add(5, 5);

            RatingList.DataSource = table;
            RatingList.DataTextField = "key";
            RatingList.DataValueField = "value";
            RatingList.DataBind();
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ldCategoryList();
                ldRatingList();
            }
        }


        protected void Add_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtPrice.Text == "")
            {
                resulttext.Text = "Please Fill all the fields.";
                return;
            }
            resulttext.Text = "";
            bool res = sqlConnection.updateDB(string.Format(@"insert into game (name,category,year,rating,price,description,img) 
                                                                values('{0}','{1}',{2},{3},{4},'{5}','{6}') ",
                                                                txtName.Text,
                                                                CategoryList.SelectedValue,
                                                                txtYear.Text,
                                                                RatingList.SelectedValue,
                                                                txtPrice.Text,
                                                                txtDesc.Text,
                                                                txtImage.Text));
            if (res)
            {
                Response.Redirect("admin.aspx");
            }
        }
    }
}