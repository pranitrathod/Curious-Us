<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpTeach.aspx.cs" Inherits="SignUPage.SignUpTeach" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<body>
<title>SignUpTeachers</title>
<style type="text/css">
body
{   padding:0 100px;
    background:url("Backimg/bulb (12).jpg");
    background-size:cover;
    background-attachment:fixed;
   
}
    .style2
    {
        color: #FF3300;
    }
    .style4
    {
        color: #000000;
        }
</style>
 <form id="form1" runat="server">
    <div style="border: thin inset #00FFFF; height: 1262px; width: 864px; margin-left: 188px; font-size: large; margin-top: 0px; font-weight: 700;">
        
        <br />
        <div style="margin-left: 260px; font-size: xx-large; width: 259px;">
&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Overline="False" 
                Font-Strikeout="False" Text="Sign Up" 
                
                
                
                
                style="font-size: 55px; color: #000000; font-family: 'Times New Roman', Times, serif; font-style:bold;"></asp:Label>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<span class="style2"> </span><span class="style4">First Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt1" ErrorMessage="*First Name is Empty" Font-Size="Small" 
            ForeColor="Red" style="font-weight: 700" CssClass="style7"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label7" runat="server" Text="Last Name" CssClass="style4"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox 
            ID="txt2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="txt2" ErrorMessage="*Last Name is Empty" 
            Font-Size="Small" ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
&nbsp;
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label8" runat="server" Text="Email Id" CssClass="style4"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
&nbsp;
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="txt3" ErrorMessage="*Invalid EmailID" 
            Font-Size="Small" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            CssClass="style6"></asp:RegularExpressionValidator>
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txt3" ErrorMessage="*Email ID is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
        <br />
        &nbsp;
        <asp:Label ID="Label9" runat="server" Text="Phone Number" CssClass="style4"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt4" runat="server" MaxLength="10"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="txt4" ErrorMessage="*Invalid Number" 
            Font-Size="Small" ForeColor="Red" 
            ValidationExpression="^([7-9]{1})([0-9]{9})$" CssClass="style6"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Create Password" CssClass="style4"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txt5" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txt5" ControlToValidate="txt6" 
            ErrorMessage="*Password does not match" Font-Size="Small" 
            ForeColor="Red" CssClass="style6"></asp:CompareValidator>
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txt5" ErrorMessage="*Password  is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
        <br />
        &nbsp;<asp:Label ID="Label12" runat="server" Text="Confirm Password" 
            CssClass="style4"></asp:Label>
        &nbsp;<asp:TextBox ID="txt6" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp; <span class="style4">Gender</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="ddlG" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="ddlG" ErrorMessage="*Select your Gender" Font-Size="Small" 
            ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
        Qualifications&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt8" runat="server" Height="88px" Width="355px" 
            TextMode="MultiLine"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txt8" ErrorMessage="*Empty Qualifications" Font-Size="Small" 
            ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
        <br />
        <br />
        <span class="style4">Address</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt9" runat="server" Height="124px" 
            Width="401px" TextMode="MultiLine"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txt9" ErrorMessage="*Adress is Empty" Font-Size="Small" 
            ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
        <br />
&nbsp;
        <br />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
        <span class="style4">Teaching Subject</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlT" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>C Programming</asp:ListItem>
            <asp:ListItem>Adv.Java</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>Asp.net using C#</asp:ListItem>
            <asp:ListItem>Kotlin</asp:ListItem>
            <asp:ListItem>Mobile Development(Adroid)</asp:ListItem>
            <asp:ListItem>Machine Learning</asp:ListItem>
            <asp:ListItem>Artifical Intellengence</asp:ListItem>
            <asp:ListItem>Data Structure</asp:ListItem>
            <asp:ListItem>Assembly Language</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="butnSignUp_Click" Text="Sign-Up" 
            Width="125px" BackColor="#B4C9D8" BorderColor="Black" BorderStyle="Outset" 
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
    .style6
    {
        font-weight: 700;
        background-color: #000000;
    }
    .style7
    {
        background-color: #000000;
    }
</style>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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