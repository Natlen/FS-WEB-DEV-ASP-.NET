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
    public partial class EditGame : System.Web.UI.Page
    {
        public static int id;


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
                if (Request["id"] == null || Request["id"] == "")
                    return;
                bool validInt = Int32.TryParse(Request["id"], out id);
                if (validInt)
                {
                    DataTable GameData = ((DataSet)sqlConnection.getFromDB("select * from game where Id=" + id)).Tables[0];


                    if (GameData != null)
                    {
                        ldCategoryList();
                        ldRatingList();
                      

                        txtID.Text = GameData.Rows[0]["id"].ToString();
                        txtName.Text = GameData.Rows[0]["name"].ToString();
                        txtPrice.Text = GameData.Rows[0]["price"].ToString();
                        txtImage.Text = GameData.Rows[0]["img"].ToString();
                        CategoryList.SelectedValue = GameData.Rows[0]["category"].ToString();
                        RatingList.SelectedValue = GameData.Rows[0]["rating"].ToString();
                        txtDesc.Text = GameData.Rows[0]["description"].ToString();
                        txtYear.Text = GameData.Rows[0]["year"].ToString();
                    }
                }



            }
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "" || txtImage.Text == "" || txtName.Text == "" || txtPrice.Text == "")
            {
                resulttext.Text = "Please fill all the fields !!";
                resulttext.Visible = true;
                return;
            }

            bool res = sqlConnection.updateDB(string.Format(@"UPDATE game 
                                                                SET name ='{0}',
                                                                    category ='{1}',
                                                                    year ={2}, 
                                                                    rating={3},
                                                                    price={4},
                                                                    description='{5}',
                                                                    img='{6}'
                                                                WHERE id={7}",
                                                txtName.Text,        
                                                CategoryList.SelectedValue,
                                                txtYear.Text,
                                                RatingList.SelectedValue,
                                                txtPrice.Text,
                                                txtDesc.Text,
                                                txtImage.Text,
                                                id));
            if (res)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            // fi you want to delete 
        }
    }
}