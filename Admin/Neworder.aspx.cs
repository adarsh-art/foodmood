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
    public partial class Newproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;

            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            string s = "SELECT * from orderfood";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable dns = new DataTable();
            adp.Fill(dns);
            orderlist.DataSource = dns;
            orderlist.DataBind();

            //cust_id,GROUP_CONCAT(Dish_name, ' '),Quantity,address,Phone_No
        }
    }
}