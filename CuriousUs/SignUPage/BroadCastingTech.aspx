<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BroadCastingTech.aspx.cs" Inherits="SignUPage.BroadCastingTech" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>BroadCast Message CuriousUs</title>
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

    </head>
<body style="font-size:small">  

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" href="#"><font color=#66ff00 style="font-style: italic" >Ravi's Programming</font></a><span 
            class="style25"> </span></em></div>
      <ul class="nav navbar-nav">
      <li ><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li><a href="SyllabusTeach.aspx">Syllabus</a></li>
	  <li><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li class="active"><a href="BroadCastingTech.aspx">Broadcasting Message</a></li>
      <li><a href="RankerTeach.aspx">Rankers</a></li>  
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 757px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Text="Sending Messages To all" 
            
            style="color: #000000; font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: 65px;"></asp:Label>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    <div style="width: 195px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Type your Message" 
                        
                            style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: 20px;"></asp:Label>
                    &nbsp;:</div>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="129px" TextMode="MultiLine" 
                        style="background-color: #FFFF66; margin-left: 0px;" Width="387px"></asp:TextBox>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
&nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*Please Type your Message" 
                        Font-Size="Small" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                     <br />
                     <br />
                     <asp:Button ID="Button1" runat="server"  Text="Send" 
            Width="125px" BackColor="Yellow" BorderColor="Black" BorderStyle="Outset" 
            ForeColor="Black"  Class="Button1" Font-Size="Medium" onclick="Button1_Click1"/>
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
    .style4
    {
        width: 146px;
    }
</style>

                     <br />
                     <br />
                     <br />
        <asp:Image ID="Image1" runat="server" Height="86px" Width="97px" />
&nbsp;&nbsp;&nbsp; 
                     <asp:Label ID="Label3" runat="server" ForeColor="Lime" style="color: #000000"></asp:Label>
    
                     <asp:Label ID="Label5" runat="server" ForeColor="Red" BackColor="Black" 
                         Font-Size="Medium"></asp:Label>
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" style="color: #000000"></asp:Label>
        <br />
        <asp:ListBox ID="lb1" runat="server" Height="219px" Visible="False" 
            Width="232px" style="background-color: #FFFF66"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp; 
    
    </div>
    </form>
 
 <style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
     .style5
     {
         width: 430px
     }
   
    </style>


</body>
</html>
