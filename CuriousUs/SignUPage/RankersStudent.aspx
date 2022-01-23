<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RanksED.aspx.cs" Inherits="SignUPage.RanksED" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> View Rankers</title>
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
    
      <li class="active"><a href="RankersStudent.aspx">Rankers</a></li>
	  <li><a href="EventStud.aspx">Events</a></li>
	  
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
  

</head>
<body style="height: 528px">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="RollNo" DataSourceID="SqlDataSource1" 
            onrowdeleted="GridView1_RowDeleted" onrowupdated="GridView1_RowUpdated" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Horizontal" Width="1094px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" 
                    SortExpression="RollNo" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" />
                <asp:BoundField DataField="Rankno" HeaderText="Rankno" 
                    SortExpression="Rankno" />
                <asp:BoundField DataField="Course" HeaderText="Course" 
                    SortExpression="Course" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" 
                    SortExpression="Marks" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString17 %>" 
            DeleteCommand="DELETE FROM [Rankers] WHERE (([RollNo] = ?))" 
            InsertCommand="INSERT INTO [Rankers] ([RollNo], [StudentName], [Rankno], [Course], [Year], [Marks]) VALUES (?, ?, ?, ?, ?, ?)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString17.ProviderName %>" 
            SelectCommand="SELECT * FROM [Rankers]" 
            
            UpdateCommand="UPDATE [Rankers] SET [StudentName] = ?, [Rankno] = ?, [Course] = ?, [Year] = ?, [Marks] = ? WHERE (([RollNo] = ?))">
            <DeleteParameters>
                <asp:Parameter Name="RollNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RollNo" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Rankno" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Marks" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Rankno" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Marks" Type="String" />
                <asp:Parameter Name="RollNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
    <style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (3).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
</style>
</body>
</html>
