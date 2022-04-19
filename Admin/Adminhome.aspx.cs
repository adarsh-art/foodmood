using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Adminhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {          
            string type = drpcate.SelectedItem.Value;
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;

            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            string s = "Insert into Menu (Dish_name,Price,Food_type,Discription) values('" + txtname.Text + "' ,'" + txtprice.Text + "','"+ type+"','"+ txtdetail.Text.Trim() +"')";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            //DataTable dt = new DataTable();            
            //adp.Fill(dt);
            int OBJ =cmd.ExecuteNonQuery();
            if (OBJ>0)
            {
                lblmsg.Text ="PRODUCT ADDED";
                txtname.Text = "";
                txtprice.Text = "";
                txtdetail.Text = "";
                drpcate.SelectedIndex = 0;
                
            }
            else
            {
                lblmsg.Text = "FAILED";
            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Main page.aspx");
        }
    }

}