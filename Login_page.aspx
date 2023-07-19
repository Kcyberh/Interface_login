<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="Interface_login.Login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/bootstrap.min.js"></script>
    <title>Login</title>
    <link rel="shortcut icon" href="/outline_person_black_24dp.png" type="image/x-icon">
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
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div  class="container my-5 p-5 w-50 rouned shadow border formstyle">
        <div class="form-group text-center">
            <img src="/outline_person_black_24dp.png" alt="User"  >
        </div>
    <div class="form-group text-center">
        <asp:Label ID="Label1" runat="server" Font-Size="40pt"  Text="Welcome " CssClass="display-10"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server"  Text="Login to Continue" Font-Size="24pt"></asp:Label>
    </div>
     <div class="form-group mt-4">
         
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Required="True" Placeholder="Username"></asp:TextBox>
     </div>
        <div class="form-group mt-4">
  
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Required="True" Placeholder="Password" TextMode="Password"></asp:TextBox> 
        </div>
        <div class="form-group text-center">
            <asp:Button ID="btnLogin" runat="server"  Text="Login" CssClass="btn btn-primary px-8" OnClick="btnLogin_Click" />
        </div>
        <div class="text-center">
            <asp:Label ID="lblStatus" runat="server" ></asp:Label>
            <br>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register_page.aspx">Don&#39;t have an Account? Sign up</asp:HyperLink>
        </div>
   
    </div>
    
    </form>
    
    
</body>
</html>
