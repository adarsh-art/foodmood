using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand("truncate cart");
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataTable da = new DataTable();
            cmd.Connection = sqlcon;
            adp.Fill(da);           
            sqlcon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Adminlogin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/Customerlogin.aspx");
        }
    }
}