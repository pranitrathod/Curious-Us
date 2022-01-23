<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SyllabusTeachPDF.aspx.cs" Inherits="SignUPage.SyllabusPDF" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Syllabus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><font color=#66ff00 >CuriousUs</font></a>
    </div>
     <ul class="nav navbar-nav">
      <li class="active"><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li><a href="SyllabusTeach.aspx">Syllabus</a></li>
	  <li><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li><a href="BroadCastingTech.aspx">Broadcasting Message</a></li>
      <li><a href="RankerTech.aspx">Rankers</a></li>  
	  <li><a href="InquiresTeach.aspx">Enquires</a></li>
	  <li><a href="EventTeach.aspx">Events</a></li> 
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 50px;
            background-color: #FFFF66;
        }
        .style3
        {
            height: 64px;
            color: #000000;
            background-color: #FFFF66;
        }
        .style4
        {
            height: 64px;
            width: 186px;
            background-color: #FFFF66;
        }
        .style5
        {
            height: 50px;
            width: 186px;
            background-color: #FFFF66;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="border-style: inset; border-width: thick; height: 533px; background-image: url('Backimg/CuriousUsBack.gif');">
    
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    Enter your Name:</td>
                <td class="style3">
                    <asp:TextBox ID="TeachName" runat="server"></asp:TextBox>
&nbsp;
                    
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Enter PDF Name here:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Upload PDF Here:&nbsp; </td>
                <td class="style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/DownlingPDFStu.aspx">View PDF(s)</asp:LinkButton>
    
    </div>
    </form>
</body>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/CuriousUsBack.gif");
    background-size:cover;
    background-attachment:fixed;
   
}
</style>
</html>
