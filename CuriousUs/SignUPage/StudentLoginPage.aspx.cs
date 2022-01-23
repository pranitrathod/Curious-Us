using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
namespace SignUPage
{
    public partial class StudentLoginPage : System.Web.UI.Page
    {
        OleDbCommand cmd = new OleDbCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb");
            try
            {
                

                OleDbCommand cmd = new OleDbCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from Signupst where EmailID='" + txt1.Text + "'and Password='" + txt2.Text + "'";
                OleDbDataReader dr = cmd.ExecuteReader();
                int count = 0;
                while (dr.Read())
                { count = count + 1; }
                if (count == 1)
                { Response.Redirect("HomePAge.aspx"); }
                if (count > 1)
                {
                    Response.Write("<html><body><script>{alert('Duplicate Username and Password')}</script></body></html>}");
                }
                if(count==0)
                { Response.Write("<html><body><script>{alert('User Doesnt not Exist Please Sign Up the Account')}</script></body></html>"); }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
                con.Close();
            }
        }
    }
}
    