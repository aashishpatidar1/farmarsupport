<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="farmarsupport.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Farmar support </title>
    <style type="text/css">
        #form1
        {
              
            height: 653px;
        }
        .style4
        {
            width: 1273px;
            height: 256px;
        }
        .style5
        {
            height: 114px;
            width: 413px;
        }
        .style10
        {
            width: 100px;
        }
        .style11
        {
            color: #FF0000;
        }
        .style2
        {
            height: 114px;
            width: 436px;
        }
        .style1
        {
            height: 114px;
            width: 410px;
        }
        .style13
        {
            width: 266px;
        }
        .style6
        {
            width: 413px;
        }
        .style3
        {
            width: 436px;
        }
        .style7
        {
            width: 410px;
        }
        .style14
        {
            width: 105px;
        }
        .style17
        {
            width: 246px;
        }
        .style18
        {
            width: 165px;
        }
        .style19
        {
            width: 149px;
            font-weight: 700;
        }
        .style20
        {
            width: 149px;
            height: 23px;
            font-weight: 700;
        }
        .style21
        {
            width: 246px;
            height: 23px;
        }
        .style22
        {
            height: 23px;
        }
        .style23
        {
            width: 165px;
            height: 23px;
        }
        .style24
        {
            background-color: #FFFF99;
        }
        .auto-style1 {
            width: 100%;
            height: 299px;
        }
        .auto-style2 {
            height: 349px;
        }
        .auto-style3 {
            width: 84px;
        }
        .style25{
            height: 1006px; 
            width: 100%;
            
        }
        body{ background-image: url('img/bg2.jpg');
              background-repeat:no-repeat;
            
              background-size:cover;
        }
        .auto-style4 {
            height: 114px;
            width: 466px;
        }
        .auto-style5 {
            width: 466px;
        }
        .auto-style6 {
            font-weight: 700;
        }
    </style>
</head>
<body >
   <form id="form1" runat="server">
    <div >
    
        <table class="style4">
            <tr>
                <td class="style5" valign="middle">
                    <table style="width: 100%; height: 107px;">
                        <tr>
                            <td class="style10" rowspan="3">
                                <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl="~/cscsc.jpg" 
                                    Width="97px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" 
                                
                                style="font-family: 'Bell MT'; font-size: large; text-decoration: underline; font-style: inherit; background-color: #FFFF00;" 
                                class="style11">
                                FarmarSupport</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    </td>
                <td align="char" class="auto-style4" style="border: 10px double #0000FF; background-image: url('img/mandi.jpg')">
                    </td>
                <td class="style1" valign="top">
                    <table style="width: 100%; height: 101px;">
                        <tr>
                            <td colspan="2">
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT * FROM [usinfo] WHERE ([Mobile] = @Mobile)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Mobile" SessionField="user" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:DetailsView ID="USERA1" runat="server" AutoGenerateRows="False" BackColor="#FF66FF" BorderColor="Tan" BorderWidth="5px" CellPadding="2" DataKeyNames="Mobile" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="None" Height="35px" Visible="False" Width="163px" BorderStyle="Double">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <Fields>
                                        <asp:BoundField DataField="Name" SortExpression="Name" />
                                    </Fields>
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                </asp:DetailsView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                &nbsp;</td>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14">
                                &nbsp;</td>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="loginb" runat="server" PostBackUrl="~/login.aspx" Text="LOGIN" BackColor="Lime" BorderColor="#CC0000" />
                                <asp:Button ID="logoutb" runat="server" OnClick="logoutb_Click" Text="LOGOUT" BackColor="#CC0000" BorderColor="Lime" />
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#CC00CC" ForeColor="#33CCFF" Height="29px" PostBackUrl="~/About.aspx" Text="About" Width="90px" />
                    </td>
            </tr>
            <tr>
                <td align="center" valign="middle" class="style6" rowspan="0" style="border: 20px solid #808080">
                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" 
                        BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Height="51px" 
                        ImageUrl="~/img/hnews.jpg" NavigateUrl="~/comper.aspx" Width="101px">NEWS</asp:HyperLink>
                </td>
                <td align="center" valign="middle" class="auto-style5" rowspan="0" style="border: 20px solid #808080">
                    <asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" ImageUrl="~/img/com.jpg" Width="103px" Height="50px">co</asp:HyperLink>
                </td>
                <td align="center" class="style7" rowspan="0" style="border: 20px solid #808080">
                    <asp:HyperLink ID="HyperLink3" runat="server" BorderStyle="Solid" 
                        ForeColor="Red" ImageUrl="~/img/wm.jpg" NavigateUrl="www.windy.com" 
                        Target="_self" Width="100px" Height="50px">Weather</asp:HyperLink>
                </td>
            </tr>
            </table>
    
        <div class="auto-style2">
            <table class="auto-style1">
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style19" style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList6" runat="server" 
                             
                            AutoPostBack="True" ValidationGroup="a">
                            <asp:ListItem>crop</asp:ListItem>
                            <asp:ListItem Value="soyabin">(सोयाबीन)</asp:ListItem>
                            <asp:ListItem Value="pyaj">(प्याज)</asp:ListItem>
                            <asp:ListItem Value="lahsun">(लहसुन)</asp:ListItem>
                            <asp:ListItem>(गेहू)</asp:ListItem>
                            <asp:ListItem>(धनिया)</asp:ListItem>
                            <asp:ListItem>(चना)</asp:ListItem>
                            <asp:ListItem>(मसूर)</asp:ListItem> 
                        </asp:DropDownList>
                    </td>
                    <td class="style17" style="border: medium solid #800000">
                        &nbsp;</td>
                    <td style="border: medium solid #800000">
                        &nbsp;</td>
                    <td style="border: medium solid #800000">
                        &nbsp;</td>
                    <td style="border: medium solid #800000">
                        &nbsp;</td>
                    <td class="style18" style="border: medium solid #800000">
                        &nbsp;</td>
                   
                </tr>
                <tr>
                    <td class="style19" style="border: medium solid #800000">
                        <asp:Label ID="Label8" runat="server" Text="Mandi"></asp:Label>
                    </td>
                    <td class="style17" style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Mandi" DataValueField="Mandi" EnableTheming="True" ValidateRequestMode="Enabled">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Mandi] FROM [Crop] ORDER BY [Mandi]"></asp:SqlDataSource>
                    </td>
                    <td style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="93px" 
                            AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Mandi" DataValueField="Mandi">
                        </asp:DropDownList>
                    </td>
                    <td style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" style="width: 83px" DataSourceID="SqlDataSource6" DataTextField="Mandi" DataValueField="Mandi">
                        </asp:DropDownList>
                    </td>
                    <td style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Mandi" DataValueField="Mandi">
                        </asp:DropDownList>
                    </td>
                    <td class="style18" style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Mandi" DataValueField="Mandi">
                        </asp:DropDownList>
                    </td>
                  
                </tr>
                <tr>
                    <td class="style19" align="right" style="border: medium solid #800000">
                        <span class="style24">click to</span></td>
                    <td class="style17" style="border: medium solid #800000">
                        &nbsp;</td>
                    <td style="border: medium solid #800000">
                        &nbsp;</td>
                    <td style="border: medium solid #800000">
                        &nbsp;</td>
                    <td style="border: medium solid #800000">
                        &nbsp;</td>
                    <td class="style18" style="border: medium solid #800000">
                        &nbsp;</td>
                 
                </tr>
                <tr>
                    <td class="style20" style="border: medium solid #800000">
                        <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="Date" DataValueField="Date">
                            <asp:ListItem Value="nul" Selected="True">date</asp:ListItem>
                            <asp:ListItem Value="25/02/2022">1</asp:ListItem>
                            <asp:ListItem Value="26/02/2022">2</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Date] FROM [Crop] ORDER BY [Date]"></asp:SqlDataSource>
                    </td>
                    <td class="style21" style="border: medium solid #800000">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="Price" SortExpression="Price" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Price] FROM [Crop] WHERE (([Crops] = @Crops) AND ([Date] = @Date) AND ([Mandi] = @Mandi))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList6" Name="Crops" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList7" Name="Date" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="Mandi" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style22" style="border: medium solid #800000">
                        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="Price" SortExpression="Price" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Price] FROM [Crop] WHERE (([Crops] = @Crops) AND ([Date] = @Date) AND ([Mandi] = @Mandi))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList6" Name="Crops" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList7" Name="Date" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Mandi" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style22" style="border: medium solid #800000">
                        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="Price" SortExpression="Price" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Price] FROM [Crop] WHERE (([Mandi] = @Mandi) AND ([Crops] = @Crops) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Mandi" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList6" Name="Crops" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList7" Name="Date" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style22" style="border: medium solid #800000">
                        <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="Price" SortExpression="Price" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Price] FROM [Crop] WHERE (([Crops] = @Crops) AND ([Date] = @Date) AND ([Mandi] = @Mandi))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList6" Name="Crops" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList7" Name="Date" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="Mandi" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style23" style="border: medium solid #800000">
                        <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="Price" SortExpression="Price" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Price] FROM [Crop] WHERE (([Crops] = @Crops) AND ([Date] = @Date) AND ([Mandi] = @Mandi))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList6" Name="Crops" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList7" Name="Date" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList5" Name="Mandi" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                   
                </tr>
                <tr>
                    <td class="style19">
                        <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True"  DataTextField="Date" DataValueField="Date">
                            <asp:ListItem>27/05/2022</asp:ListItem>
                            <asp:ListItem>25/05/2022</asp:ListItem>
                            <asp:ListItem Value="26/05/2022">26/05/2022</asp:ListItem>
                            <asp:ListItem>28/05/2022</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style17">
                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="sqlmandi" DataTextField="Mandi" DataValueField="Mandi">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="sqlmandi" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Mandi] FROM [Crop] ORDER BY [Mandi]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="sqlcrop" DataTextField="Crops" DataValueField="Crops">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="sqlcrop" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT [Crops] FROM [Crop] ORDER BY [Crops]"></asp:SqlDataSource>
                    </td>
                    <td>
                       
                        <asp:Button ID="insertbut" runat="server" OnClick="insertbut_Click" Text="Insert" />
                        <asp:Button ID="updatebut" runat="server" OnClick="updatebut_Click" Text="Update" />
                       
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                
                </tr>
                <tr>
                    <td class="auto-style6" colspan="6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:SqlDataSource ID="alldata" runat="server" ConnectionString="<%$ ConnectionStrings:cropdata %>" SelectCommand="SELECT DISTINCT * FROM [Crop] WHERE (([Crops] = @Crops) AND ([Date] = @Date) AND ([Mandi] = @Mandi))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList10" Name="Crops" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList8" Name="Date" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList9" Name="Mandi" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="Label10" runat="server" BackColor="Lime" Text="Label"></asp:Label>
                        <br />
                    </td>
                    
                </tr>
                <tr>
                    <td class="style19">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="alldata" CellPadding="4" ForeColor="#333333" GridLines="None" Height="59px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Crops" HeaderText="Crops" SortExpression="Crops" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Mandi" HeaderText="Mandi" SortExpression="Mandi" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        </td>
                    <td class="style17">
                        <asp:TextBox ID="TBEdit" runat="server" Height="30px" Width="129px" ></asp:TextBox>
                        <asp:Button ID="editbu" runat="server"  Text="Edit" Width="53px" OnClick="editbu_Click" />
                        <br />
                        <asp:Label ID="Label9" runat="server" BackColor="Fuchsia" Text="Enter Price"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="115px"></asp:TextBox>
                        <asp:Button ID="subinsert" runat="server"  Text="Submit" Width="99px" OnClick="subinsert_Click" />
                        </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                  
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                 
                </tr>
            </table>
        </div>
    
    </div>
    </form>
    </body>
</html>
