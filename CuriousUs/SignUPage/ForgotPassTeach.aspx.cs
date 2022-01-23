using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Net;
using System.Collections.Specialized;



namespace SignUPage
{
    public partial class ForgotPassTeach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            String mobile;

            String password;
            String mycon = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\CuriousUsPro.accdb";
            String myquery = "Select * from TeacherSign where PhoneNumber='" + TextBox1.Text + "'";
            OleDbConnection con = new OleDbConnection(mycon);
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            OleDbDataAdapter da = new OleDbDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";
                string username = ds.Tables[0].Rows[0]["FirstName"].ToString();
                mobile = ds.Tables[0].Rows[0]["PhoneNumber"].ToString();
                password = ds.Tables[0].Rows[0]["Password"].ToString();
                sendpassword(mobile, password, TextBox1.Text, username);

            }
            else
            {
                Response.Write("<html><head><body><script>alert('Please Enter Register Mobile Number')</script>");

            }
            con.Close();


        }

        private void sendpassword(String mobileno, String password1, String username, string user)
        {

            string message = "Hi " + user + " , Your Password is " + password1 + " .  -Ravi's Programming";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "vApThJfOcqM-lErltp4Y1hUcSWhLpT8zZA88KqF6zt"},
                {"numbers" , mobileno},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                string mobilelast = "*******" + mobileno.Substring(8);

                Label3.Text = "Your Password Has Been Sent to Registered Mobile Number " + mobilelast;
            }
        }

    }
}