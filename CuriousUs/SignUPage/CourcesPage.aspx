<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourcesPage.aspx.cs" Inherits="SignUPage.CourcesPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cources</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
        .style2
        {
            text-decoration: underline;
        }
 </style>

 <script language="Javascript" type="text/javascript">
     function first() {
         confirm("Programming in C and Hyper Text Markup Language - HTML are the cources in 1st year");
     }
     function second() {
         confirm("Programming in C++, Java programming and Data Structure in C are the courseses tought in 2nd year");
     }
     function third() {
         confirm("Advance Java programming, VB.net, ASP.net and Programming in Python are the courses taught in 3rd year")
     }
     function forth() {
         confirm("Machine Learning, Programming in C#, programming in Pearl and Programming in Ruby are the cources taught in 4th year");
     }
 </script>
 <body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><font color=#66ff00 >CuriousUs</font></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="HomePAge.aspx">Home</a></li>
      <li><a href="CourcesPage.aspx">Courses</a></li>
      <li><a href="DownlingPDFStu.aspx">Syllabus</a></li>
	  <li><a href="FacultyMembers.aspx">Faculty Members</a></li>
      <li><a href="#">Chat Room</a></li>
      <li><a href="#">Rankers</a></li>
	  <li><a href="EventStud.aspx">Events</a></li>
	  <li><a href="#">About Us</a></li>
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
 <form>
 <input type="button" name="b1" value="1st Year" onclick="first()" style="color: #00FF00; height: 48px; width: 179px; font-size: xx-large; background-color: #333333">
 <h1>                    </h1>
 <input type="button" name="b2" value="2nd Year" onclick="second()" style="color: #00FF00; height: 48px; width: 179px; font-size: xx-large; background-color: #333333">
 <h1>                    </h1>
 <input type="button" name="b3" value="3rd Year" onclick="third()" style="color: #00FF00; height: 48px; width: 179px; font-size: xx-large; background-color: #333333">
 <h1>
 <input type="button" name="b4" value="4th Year" onclick="forth()" style="color: #00FF00; height: 48px; width: 179px; font-size: xx-large; background-color: #333333">

 </form>
 </body>
 </body>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/CuriousUsBack.gif");
    background-size:cover;
    background-attachment:fixed;
   
}
</style>
</head>
 </html>