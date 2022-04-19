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
    public partial class cart : System.Web.UI.Page
    {
        
        string con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
        
        String c = "1";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["cid"].ToString();
            c = Label2.Text;
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();                     
            MySqlCommand cmd = new MySqlCommand("Select Sr_no,Dish_name,Quantity,Price from cart where custid = '"+c+"'");
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataTable da = new DataTable();
            cmd.Connection = sqlcon;
            adp.Fill(da);
            GridView1.DataSource = da;
            GridView1.DataBind();
            sqlcon.Close();
            TextBox1.Visible = false;
            Button1.Visible = false;


        }
             
       
       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            int cart = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            if (int.Parse(TextBox1.Text) == 0)
            {

                MySqlCommand cmd = new MySqlCommand("delete from cart where Sr_no='" + cart + "'");
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                cmd.Connection = sqlcon;
                cmd.ExecuteNonQuery();




            }

            else
            {

                MySqlCommand cmd = new MySqlCommand("update cart set Quantity='" + int.Parse(TextBox1.Text) + "' where Sr_no='" + cart + "'");
                cmd.Connection = sqlcon;
                cmd.ExecuteNonQuery();
                Page_Load(sender, e);
            }
            sqlcon.Close();
            TextBox1.Text = "";
            TextBox1.Visible = false;
            Button1.Visible = false;
            Response.Redirect("cart.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand("INSERT INTO orderfood (cust_id,Dishname,Quantity,Price,Address,Phone_No) SELECT DISTINCT custid as id,Dish_name,Quantity,Price,Address,PhoneNo from cart natural join customerlogin"); //where custid = '" + c+"'");         
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);        
            cmd.Connection = sqlcon;            
            DataTable dt = new DataTable();  
            adp.Fill(dt);

                   
            
          
            Response.Redirect("order.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox1.Focus();
            Button1.Visible = true;
        }
    }
}