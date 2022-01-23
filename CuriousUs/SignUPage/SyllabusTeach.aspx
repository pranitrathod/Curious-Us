<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SyllabusTeachPDF.aspx.cs" Inherits="SignUPage.SyllabusPDF" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<style type="text/css">
body
{   padding:0 100px;
    background:url("http://localhost:50303/Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
    .style1
    {
        width: 100%;
        height: 274px;
    }
    .style2
    {
        width: 167px;
        height: 70px;
    }
    .style3
    {
        width: 167px;
        height: 32px;
    }
    .style4
    {
        height: 32px;
    }
    .style5
    {
        width: 167px;
        height: 76px;
    }
    .style6
    {
        height: 76px;
    }
    .style7
    {
        height: 70px;
    }
</style>
    <title>Syllabus</title>
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <em>
    <a class="navbar-brand" href="#"><font color=#66ff00 >Ravi's Programming</font></a><span 
            class="style25"> </span></em></div>
    <ul class="nav navbar-nav">
      <li ><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li class="active"><a href="SyllabusTeach.aspx">Notes</a></li>
	  <li><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li><a href="BroadCastingTech.aspx">Broadcast Message</a></li>
      <li><a href="RankerTeach.aspx">Rankers</a></li>  
	  <li><a href="InquiresTeach.aspx">Enquires</a></li>
	  <li><a href="EventTeach.aspx">Events</a></li> 
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>

</head>
<body>
    <div class="style10">
<style>
.style10
		{
			background-color: rgba(255, 255, 255, .15);   
			box-shadow: 0 0 1rem 0 rgba(0,0,0,.9); 
		}
  </style>
</div>
    <form id="form1" runat="server">
    <div style="border-style: inset; border-width: thick; height: 607px; visibility: visible; background-image: none; background-color: #FFFF66;"
        style10">
    
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;<div style="width: 168px">
&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                            Text="Enter your name:"></asp:Label>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td class="style6">
                    <asp:TextBox ID="TeachName" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Enter PDF Name here:" 
                        style="font-weight: 700"></asp:Label>
                    &nbsp;
                </td>
                <td class="style4">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <strong>&nbsp;&nbsp; Upload PDF Here:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td class="style7">
                    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" 
                        Width="215px" />
                </td>
            </tr>
        </table>
    
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" 
            Width="125px" BackColor="Yellow" BorderColor="Black" BorderStyle="Outset" 
            ForeColor="Black"  Class="Button1" Font-Size="Medium"/>
<style>
.Button1 {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.Button1:hover {background-color: #3e8e41}

.Button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    .style11
    {
        font-size: medium;
    }
</style>

        &nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red" 
            style="font-size: 18px; font-weight: 700"></asp:Label>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
        <div>
        </div>
        <br />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/DownloadPDFTeach.aspx" ForeColor="Blue">View PDF(s)</asp:LinkButton>
    
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
    <style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
    
   
}</style>

</body>
</html>
