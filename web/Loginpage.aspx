<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="web.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
            width: 187px;
        }
        .auto-style5 {
            margin-left: 120px;
        }
        .auto-style6 {
            height: 23px;
            width: 387px;
        }
        .auto-style7 {
            height: 23px;
            width: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color:red;margin-left:40px">Login Page</h1><br />
        
                </div>
        <table class="auto-style1" >
            <tr>
                <td class="auto-style3">UserName</td>
                <td class="auto-style6">
                    <asp:TextBox ID="usernameText" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameText" ErrorMessage="Please enter Username"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="passwordText" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordText" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7"></td>
            </tr>
          
        </table>
    &nbsp;&nbsp;&nbsp;
        <div class="auto-style5">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
