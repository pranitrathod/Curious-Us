<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventTeach.aspx.cs" Inherits="SignUPage.EventTeach" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Events</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script type="text/javascript">
      window.history.forward();
      function noBack() {
          window.history.forward();
      }
</script>
    <style type="text/css">
        .style2
        {
        }
    </style>
    <style type="text/css">
        .style1
        {
            width: 46%;
            height: 140px;
        }
        .style2
        {
            width: 227px;
        }
        </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><font color=#66ff00 >
    <span style="color: #00FF00; font-style: italic;">Ravi's Programming</span></span></em></font></a><font color=#66ff00 >
    </div>
    <ul class="nav navbar-nav">
      <li class="style9" ><a href="HomeTeachers.aspx">Home</a></li>
      <li class="style9"><a href="CourceTeach.aspx">Courses</a></li>
      <li class="style9"><a href="SyllabusTeach.aspx">Syllabus</a></li>
	  <li class="style9"><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li class="style9"><a href="BroadCastingTech.aspx">Broadcasting Message</a></li>
      <li class="style9"><a href="RankerTeach.aspx">Rankers</a></li>  
	  <li class="style9"><a href="InquiresTeach.aspx">Enquires</a></li>
	  <li class="style9"><a href="EventTeach.aspx">Events</a></li> 
	  <li class="style9"><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
    <div style="height: 821px">
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style7">
                    <asp:Label ID="lb1" runat="server" Font-Size="Medium" ForeColor="White" 
                        Text="Write Something:" style="color: #000000; font-weight: 700"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" Width="355px" Height="153px" 
                        BackColor="White" TextMode="MultiLine" 
                        style="background-color: #F3E1D5; color: #000000;"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    <strong>Uploaded By:</strong></td>
                <td class="style2">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#F2CB30" 
                        style="background-color: #Yellow; color:#000000;"></asp:TextBox>
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="White" 
                        Text="Upload Image Here:" style="font-weight: 700; color: #000000"></asp:Label>
                </td>
                <td class="style2">
                    <br />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="209px" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <asp:Image ID="img1" runat="server" Height="83px" Width="101px" />
        <asp:Label ID="Label3" runat="server" ForeColor="Lime"></asp:Label>
        &nbsp;<font color=#66ff00 ><asp:Label ID="Label1" runat="server"  ForeColor="Red"></asp:Label>
        </font>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Post" 
            Width="125px" BackColor="" BorderColor="Black" BorderStyle="Outset" 
            ForeColor="Black"  Class="Button1" Font-Size="Medium"/>
<style>
    .Button1 {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        padding: 15px 25px;
        font-size: 24px;
        text-align: center;
        cursor: pointer;
        outline: none;
        color: #fff;
  background-color: #FBEEE6;
        border-radius: 15px;
        box-shadow: 0 9px #999;
}

.Button1:hover {background-color: #3e8e41}

.Button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

        <span class="style5">
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/EventTeacher.aspx">View Image</asp:LinkButton>
        <br />

        <br class="style4" />
        </span>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>

<style type="text/css">

body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
    
   
}
    .style4
    {
        text-decoration: underline;
    }
    .style5
    {
        font-size: 20px;
    }
    .style6
    {
        color: #000000;
        font-size: medium;
    }
    .style7
    {
        height: 188px;
    }
    .style8
    {
        width: 227px;
        height: 188px;
    }
    .style9
    {
        font-size: small;
    }
</style>
</html>
