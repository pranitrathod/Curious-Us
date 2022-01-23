<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursePageStu.aspx.cs" Inherits="SignUPage.CoursePageStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html> 

  <head>

 
    <title>Courses</title><meta charset="utf-8">
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
            text-decoration: underline;
        }
    </style>
</head>
<body style="font-size:small">  

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><font color=#66ff00 ><i>Ravi's Programming</i></font></a><span 
            class="style25"> </span></em></div>
    <ul class="nav navbar-nav" >
      <li ><a href="HomePAge.aspx">Home</a></li>
      <li class="active"><a href="CoursePageStu.aspx">Courses</a></li>
      <li><a href="DownlingPDFStu.aspx">Notes</a></li>
	  <li><a href="FacultyMembers.aspx">Faculty Members</a></li>
      
      <li><a href="RankersStudent.aspx">Rankers</a></li>
	  <li><a href="EventStud.aspx">Events</a></li>
	  
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
  
 
<script type="text/javascript">

    var teacherLists = new Array(5)

    teacherLists["empty"] = ["Select year"];

    teacherLists["First Year"] = ["Css", "C Language", "C++", "C#"];

    teacherLists["Second Year"] = ["Perl", "Java Programing ", "Adv Java", "SQL"];

    teacherLists["Third Year"] = ["Core Vb.net", "HTML", "JAVA script", "PHP"];

    teacherLists["Forth Year"] = ["Machine Learning", "Python", "Android", "ASP.net"];


    function teacherChange(selectObj) {

        var a = selectObj.selectedIndex;

        var which = selectObj.options[a].value;

        tList = teacherLists[which];

        var tSelect = document.getElementById("teacher");

        var len = tSelect.options.length;

        while (tSelect.options.length > 0) {
            tSelect.remove(0);
        }

        var newOption;

        for (var i = 0; i < tList.length; i++) {
            newOption = document.createElement("option");

            newOption.value = tList[i];
            newOption.text = tList[i];

            try {

                tSelect.add(newOption);
            }
            catch (e) {
                tSelect.appendChild(newOption);



            }


        }

    }
 


</script>

</head>




 <h1 align="center"><p><label for="year">Select year</label></p></h1>
<h1 align="center"><p><select id="year" onchange="teacherChange(this);">
</h1>
<option value="empty">Select a year</option>

<option value="First Year">First Year</option>

<option value="Second Year">Second Year</option>

<option value="Third Year">Third Year</option>

<option value="Forth Year">Forth Year</option>

</p></select>

<br />

<h1 align="center"><p> <label for="teacher">Names of Course </label>
</p></h1>
<h1 align="center"><p><select id="teacher">
</h1>
<option value="0"> Course</option>

</p></select>

</body>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
    .style3
    {
        font-size: large;
    }
    .style4
    {
        text-decoration: underline;
        font-size: large;
    }
</style>
</html>