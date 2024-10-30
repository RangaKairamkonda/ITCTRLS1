using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

namespace ITCTRLS1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getMemberDetails_4(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(k);

            conn.Open();
            SqlCommand cmd = new SqlCommand("Proc_4", conn);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                StringBuilder html = new StringBuilder();
                while (reader.Read())
                {
                    html.Append("<tr>");
                    html.AppendFormat("<td class='product-name'>{0}</td>", reader["fname"]);
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["email"]);
                    html.Append("</tr>");
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["phno"]);
                    html.Append("</tr>");
                }
                productContainer.InnerHtml = html.ToString();
            }
            else
            {
                noDataMessage.Visible = true; // Show no data message if no products
            }
        }

        protected void getMemberDetails_1(object sender, EventArgs e)
        {
            /* SqlConnection con = new SqlConnection(k);
             con.Open();
             SqlDataAdapter ad = new SqlDataAdapter("proc_1", con);

             DataSet ds = new DataSet();
             ad.Fill(ds);
             //GridView1.DataSource = ds;
             //GridView1.DataBind();*/





            SqlConnection conn = new SqlConnection(k);
                
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Proc_1", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        StringBuilder html = new StringBuilder();
                while (reader.Read())
                {
                    html.Append("<tr>");
                    html.AppendFormat("<td class='product-name'>{0}</td>", reader["fname"]);
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["email"]);
                    html.Append("</tr>");
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["phno"]);
                    html.Append("</tr>");
                }
                        productContainer.InnerHtml = html.ToString();
                    }
                    else
                    {
                        noDataMessage.Visible = true; // Show no data message if no products
                    }
                }
          
        
    
        protected void getMemberDetails_3(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(k);

            conn.Open();
            SqlCommand cmd = new SqlCommand("Proc_3", conn);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                StringBuilder html = new StringBuilder();
                while (reader.Read())
                {
                    html.Append("<tr>");
                    html.AppendFormat("<td class='product-name'>{0}</td>", reader["fname"]);
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["email"]);
                    html.Append("</tr>");
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["phno"]);
                    html.Append("</tr>");
                }
                productContainer.InnerHtml = html.ToString();
            }
            else
            {
                noDataMessage.Visible = true; // Show no data message if no products
            }
        }
        protected void getMemberDetails_2(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(k);

            conn.Open();
            SqlCommand cmd = new SqlCommand("Proc_2", conn);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                StringBuilder html = new StringBuilder();
                while (reader.Read())
                {
                    html.Append("<tr>");
                    html.AppendFormat("<td class='product-name'>{0}</td>", reader["fname"]);
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["email"]);
                    html.Append("</tr>");
                    html.AppendFormat("<td class='product-price'>{0}</td>", reader["phno"]);
                    html.Append("</tr>");
                }
                productContainer.InnerHtml = html.ToString();
            }
            else
            {
                noDataMessage.Visible = true; // Show no data message if no products
            }
        }
    }
}