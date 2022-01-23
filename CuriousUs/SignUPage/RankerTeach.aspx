<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RankerTeach.aspx.cs" Inherits="SignUPage.RankerTeach" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rankers</title>
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

    <body style="font-size:small">  

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><em><span class="style13">
        <span style="color: #00FF00">Ravi's Programming</span></span></em></a>
    </div>
      <ul class="nav navbar-nav">
      <li><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li><a href="SyllabusTeach.aspx">Syllabus</a></li>
	  <li><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li><a href="BroadCastingTech.aspx">Broadcasting Message</a></li>
      <li class="active"><a href="RankerTeach.aspx">Rankers</a></li>
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
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 790px">
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="RollNo:" style="font-weight: 700" 
                        CssClass="style16"></asp:Label>
                </td>
                <td class="style9">
                    <br />
                    &nbsp;<asp:TextBox 
                        ID="TextBox1" runat="server" MaxLength="3"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="Red" style="font-weight: 700" ValidationExpression="^[0-9]{1,3}$">*Enter Only Number</asp:RegularExpressionValidator>
                    <br />
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Student Name:" 
                        style="font-weight: 700" CssClass="style16"></asp:Label>
                </td>
                <td class="style11">
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="RankNo" style="font-weight: 700" 
                        CssClass="style16"></asp:Label>
                    :</td>
                <td>
                    <br />
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>#1</asp:ListItem>
                        <asp:ListItem>#2</asp:ListItem>
                        <asp:ListItem>#3</asp:ListItem>
                        <asp:ListItem>#4</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Course" style="font-weight: 700" 
                        CssClass="style16"></asp:Label>
                    :</td>
                <td>
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>Asp.net using C#</asp:ListItem>
                        <asp:ListItem>CSS &amp; HTML</asp:ListItem>
                        <asp:ListItem>Database Managament System</asp:ListItem>
                        <asp:ListItem>Advance Java</asp:ListItem>
                        <asp:ListItem>Operating System</asp:ListItem>
                        <asp:ListItem>Javascript</asp:ListItem>
                        <asp:ListItem>BootStrap</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Year" style="font-weight: 700" 
                        CssClass="style16"></asp:Label>
                    :&nbsp;</td>
                <td>
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1 Year</asp:ListItem>
                        <asp:ListItem>2 Year</asp:ListItem>
                        <asp:ListItem>3 Year</asp:ListItem>
                        <asp:ListItem Value="4 Year"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Marks" style="font-weight: 700" 
                        CssClass="style16"></asp:Label>
                    :</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="2"></asp:TextBox>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="Red" style="font-weight: 700" ValidationExpression="^[0-9]{2}$">*Enter Only Number</asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            </table>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="60px" style="margin-right: 0px" />
&nbsp;<asp:Label ID="lb" runat="server" style="color: #FF0000; font-weight: 700"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Done" 
            Width="125px" BackColor="white" BorderColor="Black" BorderStyle="Outset" 
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
    </style>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/RanksED.aspx" style="font-weight: 700; font-size: large;">View Ranker(s)</asp:LinkButton>

    
    </div>
    </form>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
   
  
    
    .style8
    {
        width: 249px;
        height: 15px;
    }
    .style9
    {
        height: 15px;
    }
    .style10
    {
        width: 249px;
        height: 40px;
    }
    .style11
    {
        height: 40px;
    }
   
  
    
    .style12
    {
        width: 254px;
    }
   
  
    
    .style13
    {
        color: #FFFF00;
    }
   
  
    
    .style14
    {
        width: 249px;
    }
    .style15
    {
        width: 252px;
    }
    .style16
    {
        font-size: 20px;
    }
   
  
    
</style>

</body>

</html>
