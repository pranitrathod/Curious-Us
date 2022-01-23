using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Collections.Specialized;
using System.Data;
using System.Data.OleDb;


namespace SignUPage
{
    public partial class BroadCastingTech : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                string sname;
                string mobileno;
                String mycon = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\CuriousUsPro.accdb";
                String myquery = "Select * from SignupSt";
                OleDbConnection con = new OleDbConnection(mycon);
                OleDbCommand cmd = new OleDbCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                OleDbDataAdapter da = new OleDbDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                int nrow;
                nrow = ds.Tables[0].Rows.Count;
                int i = 0;
                while (i < nrow)
                {
                    sname = ds.Tables[0].Rows[i]["FirstName"].ToString();
                    mobileno = ds.Tables[0].Rows[i]["PhoneNumber"].ToString();
                    sendsms(mobileno, sname);
                    lb1.Items.Add(mobileno + " " + sname);

                    i = i + 1;
                }
                Label3.Text = "SMS Sent Successfully to All Students";
                
                Label4.Text = "Registered Student Name(s) and Mobile Number(s)";
                Image1.ImageUrl = "~/Backimg/success.png";
                TextBox1.Text = "";
                con.Close();
                //GridView1.Visible = false;
                lb1.Visible = true;
            }
            catch (Exception)
            {
                //Response.Write(ex);

                Image1.ImageUrl = "~/Backimg/error.png";
                Label5.Text="*Make sure the internet is connected";
            }
        }

           
        private void sendsms(string mnumber, string sname)
        {
            string destinationaddr = mnumber;
            string message = TextBox1.Text;
            string result;
            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" ,"O6iDzYZS9dA-wFXqP03c7XOII03JOMcx8IlWF0ucqa"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                result = System.Text.Encoding.UTF8.GetString(response);
              



            }

        }

        
        
    }
}