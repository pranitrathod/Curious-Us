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
    public partial class SignUpTeach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void butnSignUp_Click(object sender, EventArgs e)
        {
            if (checkemail() == true)
            {
                Response.Write("<html><head><body><script>alert('This Account Already Exist')</script>");


            }
            else
            {
                OleDbConnection con = new OleDbConnection();
                OleDbCommand cmd = new OleDbCommand();
                con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb";
                cmd.Connection = con;
                string sql = "insert into TeacherSign values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text+"','"+txt5.Text+"','"+ddlG.SelectedItem+"','"+txt8.Text+"','"+txt9.Text+"','"+ddlT.SelectedItem+"')";
                txt1.Text = ""; txt2.Text = ""; txt3.Text = ""; txt4.Text = ""; txt8.Text = ""; txt5.Text = ""; txt9.Text = "";
                try
                {

                    con.Open();
                    cmd.CommandText = sql;
                    cmd.ExecuteNonQuery();

                    //Response.Redirect("StudentLoginPage.aspx");
                    Response.Write("<html><head><body><script>alert('Succesfully Signed-Up')</script>");
                    con.Close();


                }
                catch (Exception)
                {
                    Response.Write("<html><head><body><script>alert('Failed to Sign-Up')</script>");
                    con.Close();
                }
            }
        
        }

     
        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            String mycon = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb";
            String myquery = "Select * from TeacherSign where EmailID='" + txt3.Text + "'";
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
                emailavailable = true;

            }
            con.Close();

            return emailavailable;
        }

    }
}