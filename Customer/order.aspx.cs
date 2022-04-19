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
    public partial class order : System.Web.UI.Page
    {   //String c = Session["cid"].ToString();
        string c = "1";
        String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text= Session["UserName"].ToString();
            c= Session["cid"].ToString();
            //Label1.Text = "adarsh324";
           // Label1.Text = "adarsh324";

           

            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            string s = "select Dishname,Quantity,Price*Quantity AS total_price from orderfood where cust_id='"+c+"'";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable dbo = new DataTable();
            adp.Fill(dbo);
            ordercust.DataSource = dbo;
            ordercust.DataBind();
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            c = Session["cid"].ToString();
            //c = "1";
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            string s = "INSERT into bill(Dish_name,cust_id,Order_id,Quantity,price) SELECT Dishname,cust_id,Order_no,Quantity,Price from orderfood where cust_id='"+ c+"'";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable dbb = new DataTable();
            adp.Fill(dbb);
            ordercust.DataSource = dbb;
            ordercust.DataBind();
            Response.Redirect("bill.aspx");
        }
    }
}