using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace SignUPage
{
    public partial class Inquries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butnSign_Click(object sender, EventArgs e)
        {
             OleDbConnection con = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb";
             cmd.Connection =con;
               string sql = "insert into Enquiries values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + ddlC.SelectedItem + "','" + txt5.Text + "','" + ddlY.SelectedItem + "','" + ddlCo.SelectedItem + "','" + txt8.Text + "','" + ddlG11.SelectedItem + "')";
             
             try
             
                    {
               
                 con.Open();
                 cmd.CommandText = sql;
                 cmd.ExecuteNonQuery();
                
                 //Response.Redirect("StudentLoginPage.aspx");
                 Response.Write("<html><head><body><script>alert('We will Surely Contact you...!!')</script>");
                 txt1.Text = "";
                 txt2.Text = "";
                 txt3.Text = "";
                 txt4.Text = "";
                 txt5.Text = "";
                 txt8.Text = "";


                 con.Close();
                     
                    
                    }
             catch (Exception ex)
             {
                 Response.Write(ex);
                 //Response.Write("<html><head><body><script>alert('Something Went Wronge...!')</script>");
                 con.Close();
             }
             }
          
        }
    }
