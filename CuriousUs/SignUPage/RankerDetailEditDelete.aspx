<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RankerDetailEditDelete.aspx.cs" Inherits="SignUPage.RankerDetailEditDelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 437px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="RollNo" DataSourceID="SqlDataSource1" 
            onrowdeleted="GridView1_RowDeleted" onrowupdated="GridView1_RowUpdated">
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
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString12 %>" 
            DeleteCommand="DELETE FROM [Rankers] WHERE (([RollNo] = ?) OR ([RollNo] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Rankers] ([RollNo], [StudentName], [Rankno], [Course], [Year], [Marks]) VALUES (?, ?, ?, ?, ?, ?)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString12.ProviderName %>" 
            SelectCommand="SELECT * FROM [Rankers]" 
            UpdateCommand="UPDATE [Rankers] SET [StudentName] = ?, [Rankno] = ?, [Course] = ?, [Year] = ?, [Marks] = ? WHERE (([RollNo] = ?) OR ([RollNo] IS NULL AND ? IS NULL))">
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
</body>
</html>
