using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUPage
{
    public partial class LoginAs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

      

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void imgbutn1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("StudentLoginPage.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("TeacherLogin.aspx");
        }


       

      
      


      

        
    }
}