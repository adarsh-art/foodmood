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
    public partial class signin : System.Web.UI.Page
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
            string s = "Insert into customerlogin (Firstname,Lastname,Username,Password,Email,Address,PhoneNo) values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            //DataTable DSb = new DataTable();
            //ad.Fill(DSb);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Redirect("Customerlogin.aspx");

            }
            else 
            {
                Label8.Text = "REGISTRATION FAILED";
            }
        }
    }
}