<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationpage.aspx.cs" Inherits="web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
        }
        .auto-style2 {
            width: 59px;
        }
        .auto-style3 {
            width: 59px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 59px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            height: 22px;
            width: 177px;
        }
        .auto-style8 {
            width: 177px;
        }
        .auto-style9 {
            height: 25px;
            width: 177px;
        }
        .auto-style10 {
            margin-left: 360px;
        }
        .auto-style11 {
               width: 100px;
               height: 44px;
               margin-top: 0px;
               background-color: yellowgreen;
               font-size: 20px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div1"  style="background-color:#91b1e3; border: 5px solid black; width: 40%; margin-left:30%; margin-top:5%" >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                            <asp:TextBox ID="user" runat="server" Font-Bold="False" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name required" ForeColor="Red" ControlToValidate="user"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="email" runat="server" Font-Bold="False" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email ID" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must enter valid email id" ForeColor="Red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="contact" runat="server" Font-Bold="False" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact Number required" ForeColor="Red" ControlToValidate="contact"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Phone number" ForeColor="Red" ControlToValidate="contact" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ></asp:RegularExpressionValidator>
                         </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="country" runat="server" Font-Bold="False" Height="30px" Width="170px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>US</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Country" ForeColor="Red" ControlToValidate="country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="password" runat="server" Font-Bold="False" Height="30px" Width="170px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="confirmpass" runat="server" Font-Bold="False" Height="30px" Width="170px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Confirmation Password Required" ForeColor="Red" ControlToValidate="confirmpass"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpass" ForeColor="Red" ErrorMessage="It must match with your password"></asp:CompareValidator>
                    </td>
                </tr>
          
            </table>
        </div>
        <p class="auto-style10">
            <asp:Button ID="regbutton" runat="server" Text="Register" BackColor="#000066" Font-Size="15pt" ForeColor="White" Height="43px" Width="110px" OnClick="regbutton_Click" />
            <input id="Reset1" class="auto-style11" type="reset" value="reset"/></p>
    </form>
</body>
</html>
