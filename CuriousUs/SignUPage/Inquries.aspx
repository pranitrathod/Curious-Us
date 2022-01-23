<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inquries.aspx.cs" Inherits="SignUPage.Inquries" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Enquiry with Us</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
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
    background:url("Backimg/EnquiryBack.gif");
    
    background-attachment:fixed;
   
}
    .style3
    {
        background-color: #000000;
    }
</style>
 <form id="form1" runat="server">
    <div style="border: thin inset #00FFFF; height: 1110px; width: 715px; margin-left: 188px; font-size: large; margin-top: 0px;">
        
        <br />
        <div style="margin-left: 260px; font-size: xx-large; width: 259px;">
&nbsp;&nbsp;
            Enquiry</div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;
        First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt1" ErrorMessage="*First Name is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label7" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="txt2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="txt2" ErrorMessage="*Last Name is Empty" 
            Font-Size="Small" ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
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
            CssClass="style3"></asp:RegularExpressionValidator>
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txt3" ErrorMessage="*EmailID is Empty" Font-Size="Small" 
            ForeColor="Blue" CssClass="style3"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt4" runat="server" MaxLength="10"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="txt4" ErrorMessage="*Invalid Number" 
            Font-Size="Small" ForeColor="Red" 
            ValidationExpression="^([7-9]{1})([0-9]{9})$" CssClass="style3"></asp:RegularExpressionValidator>
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txt4" ErrorMessage="*Phone Number is Empty" 
            Font-Size="Small" ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
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
            ControlToValidate="ddlC" ErrorMessage="*Select College " Font-Size="Small" 
            ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;
        Pecentage&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txt5" runat="server" MaxLength="2" style="margin-left: 0px" 
            Width="190px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txt5" ErrorMessage="*invalid Percentage" Font-Size="Small" 
            ForeColor="Red" ValidationExpression="^[0-9]{2}$" CssClass="style3"></asp:RegularExpressionValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txt5" ErrorMessage="*Percentage is Empty" 
            Font-Size="Small" ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label13" runat="server" Text="Academic Year"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlY" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>1 year</asp:ListItem>
            <asp:ListItem>2 Year</asp:ListItem>
            <asp:ListItem>3 year</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>4 year</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="ddlY" ErrorMessage="*Select Acadmic " Font-Size="Small" 
            ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
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
        </asp:DropDownList>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="ddlCo" ErrorMessage="*Select Cources" Font-Size="Small" 
            ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt8" runat="server" Height="106px" Width="303px" 
            TextMode="MultiLine"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txt8" ErrorMessage="*Address is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
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
            ForeColor="Red" CssClass="style3"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="butnSign" runat="server" style="margin-left: 134px" 
            Text="Send" Width="87px" onclick="butnSign_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

