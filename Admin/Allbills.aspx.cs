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
    public partial class Allbills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;

            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            string s = "Select * from bill";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable dns = new DataTable();
            adp.Fill(dns);

            DataTable db = new DataTable();
                string s1 = "SELECT cust_id, GROUP_CONCAT(Dish_name,' '), sum(price*Quantity) as total_Price FROM bill GROUP BY cust_id";
                cmd.CommandText = s1;
                cmd.Connection = sqlcon;
                db = new DataTable();
                adp.Fill(db);
            
            bills.DataSource = db;
            bills.DataBind();
        }

       
    }
}