using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySqlX.XDevAPI;
using Mysqlx.Crud;

namespace ITCTRLS1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        string l= ConfigurationManager.ConnectionStrings["mysql"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                
            }
        }

        protected void info4_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(l);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("DELETE FROM users WHERE id = 3", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}