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
    public partial class Viewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;

            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            string s = "Select * from menu";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable dt = new DataTable();            
            adp.Fill(dt);
            Menuadmin.DataSource = dt;
            Menuadmin.DataBind();
        }

    }
}