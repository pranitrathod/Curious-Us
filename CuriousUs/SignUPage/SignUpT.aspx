<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpT.aspx.cs" Inherits="SignUPage.SignUpT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/kieren-andrews-697601-unsplash.jpg");
    
    background-attachment:fixed;
   
}
</style>
 <form id="form2" runat="server">
    <div style="border: thin inset #00FFFF; height: 1110px; width: 923px; margin-left: 188px; font-size: large; margin-top: 0px;">
        
        <br />
        <div style="margin-left: 260px; font-size: xx-large; width: 259px;">
&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Overline="False" 
                Font-Strikeout="False" Text="Sign Up" 
                style="font-weight: 700; font-size: 55px;"></asp:Label>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="butnSign" runat="server" style="margin-left: 134px" 
            Text="Sign-In" Width="87px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lb" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
    </div>
    </form>
            
    <form id="form1">
    <div>
    
    </div>
    </form>
</body>
</html>
