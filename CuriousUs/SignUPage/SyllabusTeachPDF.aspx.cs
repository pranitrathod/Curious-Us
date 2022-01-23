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
    public partial class SyllabusPDF : System.Web.UI.Page
    {
        static String resumelink;

        static Int32 applicationid;
        static Int32 appdup;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (uploadresume() == true)
            {

                String query = "insert into TeachPDF values('" + applicationid + "','"+TeachName.Text+"','" + TextBox1.Text + "','" + resumelink + "')";
                String mycon = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\CuriousUsPro.accdb";
                OleDbConnection con = new OleDbConnection(mycon);
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                if (applicationid == appdup)
                {
                    cmd.ExecuteNonQuery();
                    Response.Write("<html><head><body><script>{alert('Already Exist')}</script>");
                }
                else
                {
                    cmd.ExecuteNonQuery();
                    Response.Write("<html><head><body><script>{alert('Successfully Uploaded')}</script></body></head></html>");
                    TeachName.Text = "";
                    TextBox1.Text = "";

                    //Label1.Text = "Your Application ID is  '" + applicationid.ToString() + "' for Further Reference .Thanks For Apply For The Post: Developer. We will Reach at You Soon.";
                }
            }

        }
        private Boolean uploadresume()
        {
            Boolean resumesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    getapplicationid();
                    FileUpload1.SaveAs(Server.MapPath("~/UploadedResume/") + applicationid + ".pdf");

                    resumelink = "UploadedResume/" + applicationid + ".pdf";
                    resumesaved = true;
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Upload File in PDF Format Only";
                }

            }
            else
            {
                Label1.Text = "*Kindly Upload File Before Apply in PDF Format";
            }


            return resumesaved;
        }
        public void getapplicationid()
        {
            String mycon = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\CuriousUsPro.accdb";
            OleDbConnection scon = new OleDbConnection(mycon);
            String myquery = "select applicationid from TeachPDF";
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            OleDbDataAdapter da = new OleDbDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {

                applicationid = 1;

            }
           
            else
            {



                String mycon1 = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\CuriousUsPro.accdb";
                OleDbConnection scon1 = new OleDbConnection(mycon1);
                String myquery1 = "select max(applicationid) from TeachPDF";
                OleDbCommand cmd1 = new OleDbCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                OleDbDataAdapter da1 = new OleDbDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                appdup = applicationid;

                applicationid = applicationid + 1;
                scon1.Close();
            }

        }
    }
}