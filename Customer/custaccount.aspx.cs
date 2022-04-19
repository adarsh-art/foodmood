using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["UserName"].ToString();
            //Label1.Text = "adarsh324";
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
            string s = "Select * from customerlogin where Username='"+Label1.Text+"'";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable db = new DataTable();
            ad.Fill(db);
            GridView1.DataSource = db.DefaultView;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("changepass.aspx");
        }
    }
}