using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCTRLS1
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* string memberID= Request.QueryString["memberId"];
             System.Diagnostics.Debug.WriteLine("Member ID: " + memberID);

             int memberId;

             if (int.TryParse(Request.QueryString["memberId"], out memberId))
             {
                 // Use the memberId for further logic

             }
             else
             {
                 // Handle invalid or missing memberId
                 Response.Write("Invalid or missing memberId");
             }

             int memberId = int.Parse(Request.QueryString["memberId"]);
             var member = GetMemberDetailsFromDB(memberId);

              // Convert member data to JSON and return it
              var json = new JavaScriptSerializer().Serialize(member);
              Response.ContentType = "application/json";
              Response.Write(json);
             Response.End();*/

           /* if (Request.HttpMethod == "POST")
            {
                // Read the request body to get the member ID
                string requestBody;
                using (var reader = new StreamReader(Request.InputStream))
                {
                    requestBody = reader.ReadToEnd();
                }

                // Deserialize the request body
                var serializer = new JavaScriptSerializer();
                dynamic data = serializer.Deserialize<dynamic>(requestBody);
                int memberId = data["id"];

                // Fetch the member details from the database
                var member = GetMemberDetailsFromDB(memberId);

                // Convert member data to JSON and return it
                var json = serializer.Serialize(member);
                Response.ContentType = "application/json";
                Response.Write(json);
                Response.End();
            }*/
        }

        public Member GetMemberDetailsFromDB(int memberId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cs"].ToString();
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, Email, Phone, Address FROM Members WHERE MemberID = @MemberID";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@MemberID", memberId);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                Member member = null;
                if (reader.Read())
                {
                    member = new Member
                    {
                        Name = reader["Name"].ToString(),
                        Email = reader["Email"].ToString(),
                        Phone = reader["Phone"].ToString(),
                        Address = reader["Address"].ToString()
                    };
                }

                return member;
            }

        }       public class Member
          {
            public string Name { get; set; }
            public string Email { get; set; }
            public string Phone { get; set; }
            public string Address { get; set; }
        }
             
}

    }
