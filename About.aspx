<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="farmarsupport.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <style type="text/css">
        .auto-style1 {
            height: 432px;
        }
        .style2{
            font-size: 20px;
            font-weight: bold;
            font-style: oblique;
            color: #000000;
            background-color: #FFFFFF
        }
             body{ background-image: url('img/bg2.jpg');
              background-repeat:no-repeat;
            
              background-size:cover;
        }
    </style>
</head>
<body style="height: 463px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="border-style: solid; color: #FF0000; font-size: xx-large; font-weight: bold; font-style: italic; font-variant: normal; text-decoration: blink; text-align: center;" aria-invalid="false">ABOUT</h1>
            
            <h2 style="font-size: xx-large; font-weight: normal; font-variant: normal; color: #FFFF00; vertical-align: middle; border: 12px dotted #0000FF; font-style: italic;">Farmar Support</h2>
            <p style="font-size: 20px; font-weight: bold; font-style: oblique; color: #000000; background-color: #FFFFFF">This website are create for help to "Farmar" to compare the 5 Different Markets(Mandi) in single website
                so this is reduce the time and effort to campare diffrent "Markets" and easy to find out which cities market 
                are more "Rate" of Specific "Crop".

                </p>
            <p class=" ">This helps to find which Market have High Price of a Crop to Other Market.
                
            </p>
            <p style="font-size: 20px; font-weight: bold; font-style: oblique; color: #000000; background-color: #FFFFFF">not goes to different-different Mandis Website to find price of a Crop. 
                
            </p>
            <p style="font-size: 20px; font-weight: bold; font-style: oblique; color: #000000; background-color: #FFFFFF">this website created by &quot;Aashish Patidar&quot; for&nbsp; MCA III sem Project.</p>
            <h2>
                <asp:Button ID="Button1" runat="server" Text="HOME" BackColor="#CC3399" Height="36px" PostBackUrl="~/Index.aspx" Width="233px" /></h2>
        </div>
    </form>
</body>
</html>
