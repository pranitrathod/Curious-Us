<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RanksED.aspx.cs" Inherits="SignUPage.RanksED" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> View Rankers</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
  <a class="navbar-brand" href="#"><font color=#66ff00 ><i>Ravi's Programming</i></font></a><span 
            class="style25"> </span></em></div>
    <ul class="nav navbar-nav">
      <li ><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li ><a href="SyllabusTeach.aspx">Notes</a></li>
	  <li><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li><a href="BroadCastingTech.aspx">Broadcast Message</a></li>
      <li class="active"><a href="RankerTeach.aspx">Rankers</a></li>  
	  <li><a href="InquiresTeach.aspx">Enquires</a></li>
	  <li><a href="EventTeach.aspx">Events</a></li> 
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
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black" GridLines="None" Width="973px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" 
                    SortExpression="RollNo" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Rankno" HeaderText="Rankno" 
                    SortExpression="Rankno" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Course" HeaderText="Course" 
                    SortExpression="Course" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Marks" HeaderText="Marks" 
                    SortExpression="Marks" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
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
