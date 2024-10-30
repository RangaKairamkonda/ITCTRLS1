using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace ITCTRLS1
{
    public partial class SignIn : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {


           
            
        }

        protected void On_register(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_testinsert", con);
            cmd.Parameters.AddWithValue("@fname", txtfname.Text);
            cmd.Parameters.AddWithValue("@lname", txtlname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", txtpwd.Text);
            cmd.Parameters.AddWithValue("@cnfpassword", txtcnfpwd.Text);
            cmd.Parameters.AddWithValue("@phno", phno.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                txtpwd.Text = string.Empty;
                txtcnfpwd.Text = string.Empty;
                //txtemail.Text =string.Empty;
                //txtfname.Text =string.Empty;
                //txtlname.Text =string.Empty;
                phno.Text = string.Empty;
                MailMessage mail = new MailMessage();
                mail.To.Add(txtemail.Text);
                mail.From = new MailAddress("sathishpabballa@gmail.com");
                mail.Subject = "Thanks for signing up in RKInfra";

                string emailbody = "";
                emailbody += "<br>Hello </br>";
                emailbody += txtfname.Text + txtlname.Text;
                emailbody += "<br>Thank You!“Thanks for signing up. Your account has been created Sucessfully.”</br>";

                mail.Body = emailbody;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("sathishpabballa@gmail.com", "leju bobt tijm nhwp");
                smtp.Send(mail);
                Response.Redirect("Sucess.aspx");
            }
            else
            {

                Response.Redirect("SignIn.aspx");
            }

            con.Close();
        }
    }
}