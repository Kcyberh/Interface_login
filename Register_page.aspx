<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_page.aspx.cs" Inherits="Interface_login.Register_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="/add-user.png" type="image/x-icon">
    <title>Sign up</title>
    <style>
        body {
            color: #363753;
            background-color: #dfe3ee;
        }
        .formstyle{
            background-color: #5cd2c6;
            border-radius: 1rem;
            
        }
        img {
            background-color: #fefefe;
            border-radius: 100px;
            padding:0.5rem;
            width: 5rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div  class="container my-5 p-5 w-50 rouned shadow border formstyle">
        <div class="form-group text-center">
            <img src="/add-user.png" alt="Add_user"  >
        </div>
    <div class="form-group text-center">
        <asp:Label ID="Label1" runat="server" Font-Size="40pt"  Text="Create a New Account " CssClass="display-10"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server"  Text="Enter your details to Sign Up" Font-Size="15pt"></asp:Label>
    </div>
    <div class="form-group mt-4">
         
        <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control" Required="True" Placeholder="Full Name"></asp:TextBox>
 </div>
 <div class="form-group mt-4">
         
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Required="True" Placeholder="Email"></asp:TextBox>
</div>
     <div class="form-group mt-4">
         
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Required="True" Placeholder="Username"></asp:TextBox>
     </div>
        <div class="form-group mt-4">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Required="True" Placeholder="Password" TextMode="Password"></asp:TextBox> 
        </div>
       
        <div class="form-group text-center">
            <asp:Button ID="btnSignup" runat="server"  Text="Sign up" CssClass="btn btn-primary px-8" OnClick="btnSignup_Click" />
        </div>
        <div class="text-center">
            <asp:Label ID="lblStatus" runat="server" ></asp:Label>
            <br>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login_page.aspx">Already have an Account? Sign in</asp:HyperLink>
        </div>
   
    </div>
    </form>
</body>
</html>
