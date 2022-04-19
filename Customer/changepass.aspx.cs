using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer
{
    public partial class changepass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
            string s = "update customerlogin set Password='" + txtu1.Text + "' where password='" + txtp1.Text + "'";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            int rowsAffected = cmd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                Label1.Text = "PASSWORD CHANGED";
            }
            else 
            {
                Label1.Text = "FAILED";
            }

        }
    }
}