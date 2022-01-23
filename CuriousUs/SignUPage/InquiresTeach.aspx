<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InquiresTeach.aspx.cs" Inherits="SignUPage.InquiresTeach" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students Enquires</title>
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
    <a class="navbar-brand" href="#"><span class="style13">
        <span style="color: #00FF00; font-style: italic;">Ravi's Programming</span></span></a>
    </div>
      <ul class="nav navbar-nav">
      <li><a href="HomeTeachers.aspx">Home</a></li>
      <li><a href="CourceTeach.aspx">Courses</a></li>
      <li><a href="SyllabusTeach.aspx">Syllabus</a></li>
	  <li><a href="FacultyTeachers.aspx">Faculty Members</a></li>
     <li><a href="BroadCastingTech.aspx">Broadcasting Message</a></li>
      <li ><a href="RankerTeach.aspx">Rankers</a></li>
      <li class="active"><a href="InquiresTeach.aspx">Enquires</a></li>
	  <li><a href="EventTeach.aspx">Events</a></li> 
	  <li><a href="LoginAs.aspx">Log Out</a></li>
    </ul>
  </div>
</nav>
</nav>
</nav>
    <form id="form1" runat="server">
    <div style="height: 611px; width: 1203px; margin-left: 0px;">
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="FirstName" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Width="1044px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" ReadOnly="True" 
                    SortExpression="FirstName">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Justify" />
                </asp:BoundField>
                <asp:BoundField DataField="LastNme" HeaderText="LastName" 
                    SortExpression="LastNme">
                <ItemStyle HorizontalAlign="Justify" />
                </asp:BoundField>
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                    SortExpression="EmailID">
                <ItemStyle HorizontalAlign="Justify" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                    SortExpression="PhoneNo">
                <ItemStyle HorizontalAlign="Justify" />
                </asp:BoundField>
                <asp:BoundField DataField="College" HeaderText="College" 
                    SortExpression="College">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Percentage" HeaderText="Percentage" 
                    SortExpression="Percentage">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Academic Year" HeaderText="Academic Year" 
                    SortExpression="Academic Year">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Cources" HeaderText="Cources" 
                    SortExpression="Cources">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address">
                <ItemStyle HorizontalAlign="Justify" />
                </asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
            SelectCommand="SELECT * FROM [Enquiries]"></asp:SqlDataSource>
    
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
