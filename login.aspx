<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="farmarsupport.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        #form1
        {
            height: 403px;
        }
        .style1
        {
            font-size: 50pt;
            font-weight: bold;
            color: #00FF00;
            height: 53px;
            width: 1054px;
            background-color: #000099;
        }
        .style3
        {
            height: 53px;
            background-color: #FFFFFF;
        }
        .style4
        {
            height: 231px;
        }
        .style5
        {
            width: 265px;
        }
        .style6
        {
            height: 231px;
            width: 1054px;
        }
        .style7
        {
            width: 1054px;
        }
        .style8
        {
            width: 336px;
        }
               #form2
        {
            height: 409px;
        }
        .style9
        {
            font-size: 50pt;
            font-weight: bold;
            height: 125px;
            width: 800px;
            color: #00FF00;
            background-color: #0000CC;
        }
        .style10
        {
            height: 125px;
            background-color: #FFFFFF;
        }
        .style11
        {
            height: 125px;
            width: 229px;
            background-color: #FFFFFF;
        }
        .style12
        {
            width: 229px;
        }
        .style13
        {
            width: 800px;
        }
        .style14
        {
            width: 229px;
            height: 275px;
        }
        .style15
        {
            width: 800px;
            height: 275px;
        }
        .style16
        {
            height: 275px;
        }
        .style17
        {
            width: 133px;
        }
        .style18
        {
            width: 253px;
        }
    </style>
</head>
<body style="height: 728px">
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <table style="width: 100%; height: 373px;">
        <tr>
            <td class="style3">
            </td>
            <td class="style1">
                Log in</td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style6" valign="top">
                <table style="width: 100%; height: 185px;">
                    <tr>
                        <td class="style5">
                            Mobile</td>
                        <td class="style8">
                            <asp:TextBox ID="mob" runat="server" Height="27px" Width="229px" MaxLength="10"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Password</td>
                        <td class="style8">
                            <asp:TextBox ID="pass" runat="server" Height="27px" Width="230px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style8">
                            <asp:Button ID="log" runat="server" Height="30px" onclick="log_Click" 
                                Text="Log In" Width="78px" />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Ragister.aspx">You 
                are new
                </asp:LinkButton>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Not Ragistered" />
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </div>
    </form>

    <form id="form2" runat="server" class="auto-style1" visible="False">
            <table style="width: 100%; height: 290px;">
        <tr bgcolor="#FF0066">
            <td class="style11">
            </td>
            <td class="style9">
                sing up form</td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style15" valign="top">
                <table style="width: 100%; height: 236px;">
                    <tr>
                        <td class="style17">
                            Full Name</td>
                        <td class="style18">
                            <asp:TextBox ID="name" runat="server" BorderStyle="Solid" Width="208px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Mobile No</td>
                        <td class="style18">
                            <asp:TextBox ID="mobile" runat="server" Width="207px" MaxLength="10"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            E-mail</td>
                        <td class="style18">
                            <asp:TextBox ID="email" runat="server" Width="207px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            District</td>
                        <td class="style18">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Mandi" DataValueField="Mandi">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Gender</td>
                        <td class="style18">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            password</td>
                        <td class="style18">
                            <asp:TextBox ID="TextBox1" runat="server" Width="207px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="pass" ControlToValidate="cpass" 
                                ErrorMessage="CompareValidator">Password not matched</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            conferm password</td>
                        <td class="style18">
                            <asp:TextBox ID="cpass" runat="server" Width="207px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style18">
                            <asp:Button ID="sinup" runat="server" Height="38px" onclick="sinup_Click" 
                                Text="Sing Up" Width="102px" ToolTip="RAGISTER" />
                                
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:cropdata %>" 
                                SelectCommand="SELECT DISTINCT * FROM [Crop] ORDER BY [Mandi]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Button ID="logi" runat="server" Text="Already Ragister" ToolTip="LOGIN" OnClick="logi_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
