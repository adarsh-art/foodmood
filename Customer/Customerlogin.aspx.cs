using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class Customerlogin : System.Web.UI.Page
    {
        string c;
        String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
                     
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from customerlogin where Username ='" + txt1.Text + "' and Password='" + txt2.Text + "'");
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);                       
            cmd.Connection = sqlcon;
            DataTable dt = new DataTable();
            adp.Fill(dt);
            c=dt.Rows[0]["cust_id"].ToString();
            if (dt.Rows.Count > 0)
            {

                Session["UserName"] = txt1.Text;
                Session["cid"] = c;
                Response.Redirect("~/Customer/custhome.aspx");
            }
            else
            {
                Label1.Text = "Connection Failed";
            }

            /* MySqlConnection con = new MySqlConnection("server=localhost;user id=root; password=home;database=tycs");            
             con.Open();
             MySqlCommand cmd = new MySqlCommand("Select * from login where username ='" + txt1.Text + "' and password='" + txt2.Text + "'",con);
             MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
             DataTable dt =new DataTable();
             adp.Fill(dt);
             if (dt.Rows.Count > 0)
             {
                 Label1.Text="Connection done";
             }
             else
             {
                 Label1.Text = "Connection Failed";
             }*/

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/signin.aspx");
        }
    }
}