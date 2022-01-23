<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventStud.aspx.cs" Inherits="SignUPage.EventStud" %>

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
      <li><a href="HomePAge.aspx">Home</a></li>
      <li><a href="CoursePageStu.aspx">Courses</a></li>
      <li><a href="DownlingPDFStu.aspx">Notes</a></li>
	  <li><a href="FacultyMembers.aspx">Faculty Members</a></li>
      
      <li><a href="RankersStudent.aspx">Rankers</a></li>
	  <li class="active"><a href="EventStud.aspx">Events</a></li>
	 
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
    <div style="height: 585px">

     
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Caption" DataSourceID="SqlDataSource1" Width="964px">
            <Columns>
                <asp:BoundField DataField="Caption" HeaderText="Caption" ReadOnly="True" 
                    SortExpression="Caption" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="UploadedBy" HeaderText="UploadedBy" 
                    SortExpression="UploadedBy" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Images" HeaderText="Image">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" 
            SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
    
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
</style>
</html>
