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
    public partial class EventTeach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;


                if (filesize <= 51200)
                {
                    try
                    {
                        String constring = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\CuriousUsPro.accdb";
                        OleDbConnection sqlcon = new OleDbConnection(constring);
                        FileUpload1.SaveAs(Server.MapPath("~/EventImages/") + Path.GetFileName(FileUpload1.FileName));

                        String link = "EventImages/" + Path.GetFileName(FileUpload1.FileName);

                        String query = "Insert into Event(Caption,UploadedBy,Images) values('" + TextBox1.Text + "','"+TextBox2.Text+"', '"+ link + "')";
                        OleDbCommand cmd = new OleDbCommand(query, sqlcon);
                        sqlcon.Open(); ;
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();  
                        TextBox1.Text = "";
                        Label3.Text = "Uploaded Successfully....!!!!";
                        img1.ImageUrl = "~/Backimg/success.png";
                    }
                    catch (Exception)
                    {
                        
                        Response.Write("<html><body><script>{alert('Please Re-Enter and with Different Caption...!!! ')}</script></body></html>");
                    }
                }



                else
                {
                    Label1.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                    img1.ImageUrl = "~/Backimg/error.png";

                }
            }

            else
            {
                img1.ImageUrl = "~/Backimg/error.png";
                Label1.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
           
            }
           
        }