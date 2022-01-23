<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyMembers.aspx.cs" Inherits="SignUPage.FacultyMembers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!DOCTYPE html>
<html lang="en">
<head>
  <title>FacultyMembers</title>
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

<script type="text/javascript">

    var teacherLists = new Array(4)

    teacherLists["empty"] = ["Select year"];

    teacherLists["First Year"] = ["Mr.Rao", "Mr.Sharma", "Mr.Pathak", "Mrs.Rathi", "Mr.Ravi Majithia", "Mrs.Pawar"];

    teacherLists["Second Year"] = ["Mr.Deshmukh", "Mr.Patil", "Mr.Mhaske", "Mrs.Jaiswal"];

    teacherLists["Third Year"] = ["Mr.Rathod", "Mr.Joshi", "Mr.Kulkarni", "Mrs.More"];

    teacherLists["Fourth Year"] = ["Mr.Singh", "Mrs.Gill", "Mr.Khan", "Mrs.Adhe"];


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

<body>



<body style="font-size:small">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><font color=#66ff00 ><em>Ravi's Programming</em></font></a><span 
            class="style25"> </span></em></div>
    
      <ul class="nav navbar-nav">
      <li ><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li><a href="SyllabusTeach.aspx">Syllabus</a></li>
	  <li class="active"><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li><a href="BroadCastingTech.aspx">Broadcasting Message</a></li>
      <li><a href="RankerTeach.aspx">Rankers</a></li>  
	  <li><a href="InquiresTeach.aspx">Enquires</a></li>
	  <li><a href="EventTeach.aspx">Events</a></li> 
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>


<p><h1 align="center" font size="8"></h1></p>

 <h1 align="center"><p><label for="year">Select year</label></p></h1>
<h1 align="center"><p><select id="year" onchange="teacherChange(this);">
</h1>
<option value="empty">Select a year</option>

<option value="First Year">First Year</option>

<option value="Second Year">Second Year</option>

<option value="Third Year">Third Year</option>

<option value="Fourth Year">Fourth Year</option>

</p></select>

<br/>

<h1 align="center"><p> <label for="teacher">Faculty Members</label>
</p></h1>
<h1 align="center"><p><select id="teacher">
</h1>
<option value="0">Select teacher</option>

</p></select>

</body>
</body>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
</style>
</html>