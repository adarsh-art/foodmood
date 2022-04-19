using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer.menu
{
    public partial class Noodles : System.Web.UI.Page
    {
        String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
        string c;

        private static int i = 0;
        int s = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            change();
        }
        public void change()
        {

            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
            string s = "Select * from menu where Food_type='Noodles'";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable DT = new DataTable();
            ad.Fill(DT);
            if (i > DT.Rows.Count - 2)
            {
                Button3.Visible = false;

            }

            else
                lbl1.Text = DT.Rows[i]["Dish_name"].ToString() + "\n";
            lbl2.Text = DT.Rows[i]["Price"].ToString() + "\n";
            lbl3.Text = DT.Rows[i]["Discription"].ToString() + "\n";
            if (i == 0)
            {
                lbl_Text1.Text = Convert.ToString(i);
            }

            else
                lbl_Text1.Text = Convert.ToString(i);


        }
        public void order()
        {  c = Session["cid"].ToString();
           // c = "1";
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into cart (Dish_name,custid,Quantity,Price) values('" + lbl1.Text + "','" + c + "','" + 1 + "','" + lbl2.Text + "')");
            MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
            cmd.Connection = sqlcon;
            DataTable DSb = new DataTable();
            ad.Fill(DSb);
            for (int i = 1; i < DSb.Rows.Count; i++)
            {
                cmd = new MySqlCommand("Insert into raw values()");
                ad = new MySqlDataAdapter(cmd);
                cmd.Connection = sqlcon;
                DataTable DT = new DataTable();
                ad.Fill(DT);
            }

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

            if (i > 0)
            {
                Button3.Visible = true;
                i--;
                change();
            }
            else
                Button2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            i++;
            change();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (i == s)
            {
                //nothing
            }
            else
            {

                order();
                s = i;
            }


            Response.Redirect("~/Customer/cart.aspx");
        }
    }
}