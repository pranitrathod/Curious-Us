using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.IO;
namespace SignUPage
{
    public partial class RankerTeach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text !=""&&TextBox2.Text!=""&&TextBox4.Text!=""&&DropDownList4.SelectedItem!=null&&DropDownList2.SelectedItem!=null&&DropDownList3.SelectedItem!=null)
                try
                {
                    OleDbConnection con = new OleDbConnection();
                    OleDbCommand cmd = new OleDbCommand();
                    con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\CuriousUsPro.accdb";
                    cmd.Connection = con;
                    //FileUpload1.SaveAs(Server.MapPath("~/Backimg/") + Path.GetFileName(FileUpload1.FileName));
                    //String link = "Backimg/" + Path.GetFileName(FileUpload1.FileName);

                    string sql = "insert into Rankers values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList4.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "','" + TextBox4.Text + "')";

                    con.Open();
                    cmd.CommandText = sql;
                    cmd.ExecuteNonQuery();

                    Image1.ImageUrl = "~/Backimg/success.png";
                    
                    lb.Text = "Successfully Done";
                    con.Close();
                }


                catch (Exception)
                {
                    Image1.ImageUrl = "~/Backimg/error.png";
                    lb.Text = "Already Exist..!!";
                }
            else
            {
                Response.Write("<html><body><script>{alert('*Please enter all field carefully')}</script></body></html>");
            }


        }


    }
           
        }
        


        

            
    
    

       
    
