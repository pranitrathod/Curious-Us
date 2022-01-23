<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownlingPDFStu.aspx.cs" Inherits="SignUPage.DownlingPDFStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel = "shortcut icon" type = "image/png" href = "Backimg/iconCurious2jpg.png">
    <title>View PDF</title>
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
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
   <a class="navbar-brand" href="#"><font color=#66ff00 ><i>Ravi's Programming</i></font></a><span 
            class="style25"> </span></em></div>
    <ul class="nav navbar-nav">
      <li><a href="HomePAge.aspx">Home</a></li>
      <li><a href="CoursePageStu.aspx">Courses</a></li>
      <li  class="active"><a href="DownlingPDFStu.aspx">Notes</a></li>
	  <li><a href="FacultyMembers.aspx">Faculty Members</a></li>
      
      <li><a href="RankersStudent.aspx">Rankers</a></li>
	  <li><a href="EventStud.aspx">Events</a></li>
	  
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
    
</body>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="2" DataKeyNames="applicationid" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="None" Width="1033px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="applicationid" HeaderText="ApplicationId" 
                ReadOnly="True" SortExpression="applicationid" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Justify" />
            </asp:BoundField>
            <asp:BoundField DataField="Teacher Name" HeaderText="Teacher Name" 
                SortExpression="Teacher Name" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Justify" />
            </asp:BoundField>
            <asp:BoundField DataField="Name of PDF" HeaderText="Name of PDF" 
                SortExpression="Name of PDF" >
            <ItemStyle HorizontalAlign="Justify" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="File" HeaderText="File" 
                Text="View And Download" >
            <ItemStyle HorizontalAlign="Justify" />
            </asp:HyperLinkField>
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
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        SelectCommand="SELECT * FROM [TeachPDF]"></asp:SqlDataSource>
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
