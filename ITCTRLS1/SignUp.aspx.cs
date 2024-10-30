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
    public partial class SignUp : System.Web.UI.Page
    {
        string k= ConfigurationManager.ConnectionStrings["cs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(k);
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_testlogin", con);
            cmd.Parameters.AddWithValue("@email", username.Text);
            cmd.Parameters.AddWithValue("@password",password.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            int i=(int)cmd.ExecuteScalar();
            if(i == 1)
            {
                
                MailMessage mail = new MailMessage();
                mail.To.Add(username.Text);
                mail.From = new MailAddress("sathishpabballa@gmail.com");
                mail.Subject = "LOGIN--ALERT";

                string emailbody = "";
                
                emailbody += username.Text;
                emailbody += "<br>Hello </br>" + "<p></p>";
                emailbody += "<br>sucessfully Logined into RKInfra</br>";
                emailbody += "<br>Thank You</br>";
               
                    

                mail.Body = emailbody;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("sathishpabballa@gmail.com", "leju bobt tijm nhwp");
                smtp.Send(mail);
                Response.Redirect("viewdetails.aspx");
            }
            else
            {
                Response.Redirect("Failedlogin.aspx");
            }
            con.Close();    


        }
    }
}