<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SignUPage.SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Students</title>

    <style type="text/css">
        #TextArea1
        {
            height: 140px;
            width: 346px;
        }
    </style>
</head>

<body>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (12).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
</style>
 <form id="form1" runat="server">
    <div style="border: thin inset #D7B8A6; height: 1396px; width: 715px; margin-left: 188px; font-size: large; margin-top: 0px;">
        
        <div style="margin-left: 260px; font-size: xx-large; width: 259px;">
            <br />
            <asp:Label ID="Label6" runat="server" Font-Overline="False" 
                Font-Strikeout="False" Text="Sign Up" 
                style="font-size: 55px;"></asp:Label>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;
        First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt1" ErrorMessage="*First Name is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label7" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="txt2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="txt2" ErrorMessage="*Last Name is Empty" 
            Font-Size="Small" ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
&nbsp;
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label8" runat="server" Text="Email Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
&nbsp;
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="txt3" ErrorMessage="*Invalid EmailID" 
            Font-Size="Small" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            CssClass="style2"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt4" runat="server" MaxLength="10"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="txt4" ErrorMessage="*Invalid Number" 
            Font-Size="Small" ForeColor="Red" 
            ValidationExpression="^([7-9]{1})([0-9]{9})$" CssClass="style2"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label10" runat="server" Text="College"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
            ID="ddlC" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>MIT</asp:ListItem>
            <asp:ListItem>MGM</asp:ListItem>
            <asp:ListItem>Devgiri</asp:ListItem>
            <asp:ListItem>Goverment Poly</asp:ListItem>
            <asp:ListItem>Government Engg</asp:ListItem>
            <asp:ListItem>CSMSS</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txt6" ErrorMessage="*Select College " Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label11" runat="server" Text="Create Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt6" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txt6" ControlToValidate="txt7" 
            ErrorMessage="*Password Doesnt not match" Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:CompareValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="txt7" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label13" runat="server" Text="Academic Year"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlY" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>1 year</asp:ListItem>
            <asp:ListItem>2 Year</asp:ListItem>
            <asp:ListItem>3 year</asp:ListItem>
            <asp:ListItem>4 year</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="ddlY" ErrorMessage="*Select Acadmic " Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp; Cources&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlCo" runat="server" Width="263px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>C Programming</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>Data Structure</asp:ListItem>
            <asp:ListItem>Operating System</asp:ListItem>
            <asp:ListItem>HTML &amp; CSS</asp:ListItem>
            <asp:ListItem>ASP.NET using C#</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="ddlCo" ErrorMessage="*Select Cources" Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt10" runat="server" Height="121px" Width="382px" 
            TextMode="MultiLine"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txt10" ErrorMessage="*Address is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
        <br />
&nbsp;
        <br />
&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="ddlG11" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="ddlG11" ErrorMessage="*Select Gender" Font-Size="Small" 
            ForeColor="Red" CssClass="style2"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Sign-Up" 
            Width="125px" BackColor="#ffffff" BorderColor="Black" BorderStyle="Outset" 
            ForeColor="Black"  Class="Button1" Font-Size="Medium"/>
<style>
    .Button1 {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        padding: 15px 25px;
        font-size: 24px;
        text-align: center;
        cursor: pointer;
        outline: none;
        color: #fff;
  background-color: #FFFFFF;
        border-radius: 15px;
        box-shadow: 0 9px #999;
}

.Button1:hover {background-color: #3e8e41}

.Button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    .style2
    {
        background-color: #FFFFFF;
    }
</style>
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
            
</body>
</html>
