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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (checkemail() == true)
            {
                Response.Write("<html><head><body><script>alert('Sorry..!!This Account Already Exist')</script>");


            }
            OleDbConnection con = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb";
             cmd.Connection =con;
               string sql = "insert into SignupSt values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + ddlC.SelectedItem + "','" + txt6.Text + "','" + ddlY.SelectedItem + "','" + ddlCo.SelectedItem + "','" + txt10.Text + "','" + ddlG11.SelectedItem + "')";
             
             try
             
                    {
               
                 con.Open();
                 cmd.CommandText = sql;
                 cmd.ExecuteNonQuery();
                
                 
                 Response.Write("<html><head><body><script>('Succesfully Signed-Up')</script>");
                 
                 Response.Redirect("StudentLoginPage.aspx");
                 txt1.Text = "";
                 txt2.Text = "";
                 txt3.Text = "";
                 txt4.Text = "";
                 ddlC.SelectedValue = "";
                 ddlCo.SelectedValue = "";
                 txt10.Text = "";
                 txt6.Text = "";
                 //txt7.Text = "";
                 ddlG11.SelectedValue = "";
                 ddlY.SelectedValue = "";
                 
                 con.Close();
                     
                    
                    }
             catch (Exception)
             { 
                 Response.Write("<html><head><body><script>alert('Failed to Signed-Up')</script>");
                 con.Close();
             }}
            private Boolean checkemail()
        {
            Boolean emailavailable = false;
            String mycon = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb";
            String myquery = "Select * from SignupSt where EmailID='" + txt3.Text + "'";
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


       

       
      
       
    
