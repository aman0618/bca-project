<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="mainhome.aspx.cs" Inherits="aman.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
    <style type="text/css">
        .auto-style2 {
            background-color: #000000;
        }
        .auto-style3 {
            color: #CE6456;
        }
        .auto-style4 {
            color: #CC6355;
        }
        .auto-style5 {
            color: #CD6456;
        }
        .auto-style6 {
            width: 308px;
            background-color: #000000;
        }
        .auto-style7 {
            width: 232px;
        }
        .auto-style8 {
            width: 308px;
        }
        .auto-style9 {
            color: #CE4731;
        }
        .auto-style12{
            background-color:black;
        }
        .auto-style13 {
            color: #CE4731;
            height: 41px;
        }
        .auto-style14 {
            color: #CE4731;
            height: 43px;
        }
        .auto-style15 {
            color: #CE4731;
            height: 41px;
            width: 246px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="auto-style7">
      <tr>
          <td class="auto-style2">&nbsp;</td>
          <td class="auto-style2">
              <asp:ScriptManager ID="ScriptManager1" runat="server">
              </asp:ScriptManager>
          </td>
          <td class="auto-style6">&nbsp;</td>
      </tr>
      <tr class="auto-style2">
          <td  align="left" class="auto-style9">
              <asp:Panel ID="Panel3" runat="server" Height="657px" Width="300px">
                    <div class="flip"> 
  <div class="front"> 
    <img src="imgs/images2.jpg" alt="" />
  </div> 
  <div class="back">
       
      <h3 align="center"><span class="auto-style3">Women Help Line</span><br /><span class="fa-inverse">Call 1090</span></h3>
  </div> 
   </div>
                       <br />
  <div class="flip"> 
  <div class="front"> 
    <img src="imgs/images5.jpg" alt="" />
  </div> 
  <div class="back">
       
      <h3 align="center"><span class="auto-style3">Child Help Line<br /></span><span class="fa-inverse">Call 1090</span></h3>
  </div> 
   </div>
                       <br />
<div class="flip"> 
  <div class="front"> 
    <img src="imgs/images6.jpg" alt="" />
  </div> 
  <div class="back">
       
      <h3 align="center"><span class="auto-style3">Railway HelpLine</span> <span class="auto-style3">GRP<br /></span><span class="fa-inverse">Call 1512</span></h3>
  </div> 
   </div>
              </asp:Panel>
          </td>
          <td class="auto-style12">
             
              <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="657px" Width="665px" CssClass="auto-style2">
                  
                  <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="LATEST NEWS/UPDATES">
                      
                  
                         
                           <HeaderTemplate>
                               <h5 class="auto-style15">LATEST NEWS/UPDATES|</h5>
                               
                           </HeaderTemplate>
                  
                         
                           <ContentTemplate>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:crimereport %>" SelectCommand="SELECT TOP 10 [news] FROM [news]"></asp:SqlDataSource>
                               &nbsp;<marquee direction="up" style="color:red">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="647px">
                              <ItemTemplate>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<h4><asp:Label ID="Label1" runat="server" ForeColor="Yellow"  Text='<%# Eval("news") %>'></asp:Label>
                                 </h4>
                                  <hr />
                              </ItemTemplate>
                          </asp:DataList>
                             </marquee>
                      </ContentTemplate>
                      
                  </cc1:TabPanel>
                  <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="MISSING PERSON">
                      
                      <HeaderTemplate>
                          <h5 class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp; MISSING PERSON|</h5>
                          
                      </HeaderTemplate>
                      
                      <ContentTemplate>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:crimereport %>" SelectCommand="SELECT [name], [address], [photo], [ccontact] FROM [addmissingperson]"></asp:SqlDataSource>
                          <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" GridLines="Both" RepeatColumns="4">
                              <ItemTemplate>
                                  &nbsp; &nbsp;<asp:Image ID="Image1" runat="server" Height="134px" ImageUrl='<%# Eval("photo") %>' Width="150px" />
                                  <br />
                                  &nbsp;&nbsp; Name :
                                  <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                  <br />
                                  &nbsp;&nbsp; Address :
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                  <br />
                                  &nbsp;&nbsp; Contact:&nbsp;
                                  <asp:Label ID="Label4" runat="server" Text='<%# Eval("ccontact") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:DataList>
                      </ContentTemplate>
                  </cc1:TabPanel>
                  <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="MOST WANTED">
                      <HeaderTemplate>
                          <h5 class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; MOST WANTED</h5>
                          
                      </HeaderTemplate>
                     
                      <ContentTemplate>
                          <span class="auto-style2">
                          
                          </span>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:crimereport %>" SelectCommand="SELECT [c_name], [reward], [photo] FROM [addwperson]"></asp:SqlDataSource>
                          <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" GridLines="Both" RepeatColumns="4">
                              <ItemTemplate>
                                  <asp:Image ID="Image2" runat="server" Height="124px" Width="146px" ImageUrl='<%# Eval("photo") %>' />
                                  <br />
                                  Name :
                                  <asp:Label ID="Label5" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                  <br />
                                  Reward: Rs.
                                  <asp:Label ID="Label6" runat="server" Text='<%# Eval("reward") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:DataList>
                      </ContentTemplate>
                  </cc1:TabPanel>
              </cc1:TabContainer>
             
          </td>
          <td class="auto-style8" align="right">
              <asp:Panel ID="Panel2" runat="server" Height="657px" Width="311px">
                   <div class="flip"> 
  <div class="front"> 
    <img src="imgs/images1.jpg" alt="" />
  </div> 
  <div class="back">
       
      <h3 align="center"><span class="auto-style3">Control Room</span><br /><span class="fa-inverse">Call 100</span></h3>
  </div> 
   </div>
                    <br />
                        <div class="flip"> 
  <div class="front"> 
    <img src="imgs/images4.jpg" alt="" />
  </div> 
  <div class="back">
       
      <h3 align="center"><span class="auto-style4">Fire Brigrade</span><br /><span class="fa-inverse">Call 101</span></h3>
  </div> 
   </div>
 <br />
            <div class="flip"> 
  <div class="front"> 
    <img src="imgs/images3.jpg" alt="" />
  </div> 
  <div class="back">
       
      <h3 align="center"><span class="auto-style5">Ambulance<br /></span><span class="fa-inverse">Call 108</span></h3>
  </div> 
   </div>      <br />            
                     
              </asp:Panel>
          </td>
      </tr>
  </table>
</asp:Content>
