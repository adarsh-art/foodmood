using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace WebApplication1.Customer
{
    public partial class bill : System.Web.UI.Page
    {
        
        StringBuilder sb = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            string c = "1";
            Label1.Text = Session["UserName"].ToString();
            Label2.Text = Session["cid"].ToString();
            //Label1.Text = "adarsh324";
            c =Label2.Text;
            Label3.Text = DateTime.Today.ToString("MM/dd/yyyy");
            String con = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection sqlcon = new MySqlConnection(con);
            sqlcon.Open();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
            string s = "Select order_id,Dish_name,Quantity,price*Quantity As Price from bill where cust_id='" + c + "'";
            cmd.CommandText = s;
            cmd.Connection = sqlcon;
            DataTable db = new DataTable();
            ad.Fill(db);
            billview.DataSource = db.DefaultView;
            billview.DataBind();
            

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
            sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Order Sheet</b></td></tr>");
            sb.Append("<tr><td colspan = '2'></td></tr>");
            sb.Append("<tr><td><b>Customer No: </b>");
            sb.Append(Label2.Text);
            sb.Append("</td><td align = 'right'><b>Date: </b>");
            sb.Append(DateTime.Now);
            sb.Append(" </td></tr>");
            sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
            sb.Append("FOOD MOOD");
            sb.Append("</td></tr>");
            sb.Append("</table>");
            sb.Append("<br />");

            sb.Append("<table border = '1'>");
            sb.Append("<tr>");
            foreach (DataColumn column in db.Columns)
            {
                sb.Append("<th style='color:#0899D0;'>");
                sb.Append(column.ColumnName);
                sb.Append("</th>");
            }
            sb.Append("</tr>");
            foreach (DataRow row in db.Rows)
            {
                sb.Append("<tr>");
                foreach (DataColumn column in db.Columns)
                {
                    sb.Append("<td>");
                    sb.Append(row[column]);
                    sb.Append("</td>");
                }
                sb.Append("</tr>");
            }
            sb.Append("<tr><td align = 'right' colspan = '");
            sb.Append(db.Columns.Count - 1);
            sb.Append("'>Total</td>");
            sb.Append("<td>");
            sb.Append(db.Compute("sum(Price)", ""));
            sb.Append("</td>");
            sb.Append("</tr></table>");

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {



            StringReader sr = new StringReader(sb.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Bill"+ ".pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}