<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="FindLaywerC.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
	
	<!-- banner slider css file -->
	
	<!-- //banner slider css file -->

	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	
    <style type="text/css">
    .style10
    {
        color: #0033CC;
        font-size: x-large;
    }
    .style12
    {
        width: 20%;
    }
    .style15
    {
        width: 3%;
    }
    .style18
    {
        width: 85px;
    }
    .style19
    {
        width: 65%;
    }
    
        .auto-style1 {
            width: 116px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:auto; ">

<div style="height: auto; width:1000px; margin-left:150px">
        <hr />
    <table style="border-style: solid;  width: 100%; height: auto;  color:Black">

     		
          <div class="row" style="height: auto; width:1030px;">
              <table style="width: 100%;">
                  <tr>
                      <td class="auto-style1">
			<a href="index.html">Serach </a>
		                  Lawyer:</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
			<a href="index.html">Select Law Field </a>
                      </td>
                      <td>
            <asp:DropDownList ID="ddlField" runat="server" class="form-control">
                              <asp:ListItem>Banking and Finance Law</asp:ListItem>
                               <asp:ListItem>Clinical Negligence Law</asp:ListItem>
                            
                                  <asp:ListItem>Construction Law</asp:ListItem>
                              <asp:ListItem>Corporate Law</asp:ListItem>
                            
                                  <asp:ListItem>Criminal Law</asp:ListItem>
                              <asp:ListItem>Employment Law</asp:ListItem>
                              <asp:ListItem>Family Law</asp:ListItem>
                              <asp:ListItem>Human Rights Law</asp:ListItem>
                              <asp:ListItem>Immigration Law</asp:ListItem>
                              <asp:ListItem>Property Law</asp:ListItem>
                              <asp:ListItem>Public Sector and Local Government Law</asp:ListItem>
                              <asp:ListItem>Tax Law</asp:ListItem>
                            
                                  </asp:DropDownList>
		              </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">Select City</td>
                      <td>
            <asp:DropDownList ID="ddlField1" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location">
                              <asp:ListItem>Banking and Finance Law</asp:ListItem>
                               <asp:ListItem>Clinical Negligence Law</asp:ListItem>
                            
                                  <asp:ListItem>Construction Law</asp:ListItem>
                              <asp:ListItem>Corporate Law</asp:ListItem>
                            
                                  <asp:ListItem>Criminal Law</asp:ListItem>
                              <asp:ListItem>Employment Law</asp:ListItem>
                              <asp:ListItem>Family Law</asp:ListItem>
                              <asp:ListItem>Human Rights Law</asp:ListItem>
                              <asp:ListItem>Immigration Law</asp:ListItem>
                              <asp:ListItem>Property Law</asp:ListItem>
                              <asp:ListItem>Public Sector and Local Government Law</asp:ListItem>
                              <asp:ListItem>Tax Law</asp:ListItem>
                            
                                  </asp:DropDownList>
		                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT DISTINCT [Location] FROM [LawyerInfo]"></asp:SqlDataSource>
		              </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1"> <asp:Button ID="Button6" runat="server" Text="Find" class="form-control"  OnClick="Button5_Click" CausesValidation="False" 
                                   />	</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
              </table>
                  
              </div>
         
         
        <div class="row" style="height: auto; width:1030px;margin-left:150px">
           <hr />
<asp:ListView runat="server" ID="listView" GroupItemCount="6"   OnItemDataBound="listView_ItemDataBound" >
       <LayoutTemplate>
    <div>
        <div >
            <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
        </div>
        <asp:DataPager runat="server" ID="dpMyDatePager" PageSize="8" PagedControlID="listView"></asp:DataPager>
    </div>
</LayoutTemplate>
<GroupTemplate>
    <div style="clear: both;  height:100%">
        <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
    </div>
</GroupTemplate>

<ItemTemplate>
 <div class="container">
      <hr />
    <div class="row user-menu-container square">
        <div class="col-md-7 user-details">
            <div class="row coralbg white">
                <div class="col-md-6 no-pad">
                     <div class="user-image">
                       
                        <img src='<%# Eval("PhotoImage") %>'  height="100px"    width="200px"  class="img-responsive thumbnail">
                    </div>
                   
                </div>
                <div class="col-md-6 no-pad">
                    <div class="user-pad">

                        <h3>Lawyer Name :</h3>
                        <br />
                        <h4 class="white"><i class="fa fa-check-circle-o"></i> <%# Eval("LawyerName") %></h4>
                      
                    </div>
                </div>
            </div>
      <div class="row overview">
                <div class="col-md-4 user-pad text-center">
                    <h5>LAW PRACTICE EXPERIENCE</h5>
                     <h6> <%# Eval("LawExperience") %></h6>
                </div>
                <div class="col-md-4 user-pad text-center">
                    <h5>Start Year</h5>
                    <h6> <%# Eval("StartYear") %></h6>
                </div>
                <div class="col-md-4 user-pad text-center">
                    <h5>Mobile No</h5>
                   <h6> <%# Eval("MobileNo") %></h6>
                </div>
            </div>
        </div>
       
        <div class="col-md-4 user-menu user-pad">
            <div class="user-menu-content active">
                <h3>
                   Work Experience 
                </h3>
                <ul >
                     <br />
                    <li>
                       
                        <h4> <%# Eval("WorkingDesc") %></h4>
                    </li>
                        <br />
                   <li>
                        
                        <h4>SpecialiseIn : <%# Eval("SpecialiseIn") %></h4>
                    </li>
                      <li>
                        
                        <h4>Email: <%# Eval("Email") %></h4>
                    </li>
                     
                      <li>
                        
                        <h4>Location : <%# Eval("Location") %></h4>
                    </li>
                    <br />
                         <asp:Label ID="lblId"  runat="server" Text='<%#Eval("LawyerId")%>' Visible="false"></asp:Label>
           <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
                   
   <asp:LinkButton ID="LinkButton3" class="btn btn-labeled btn-success"   OnClick="btnAdd133_Click" runat="server" Text="Book An Appointment" BackColor="#009999"></asp:LinkButton>
                      <br />
                    </li>
                </ul>
            </div>
            
        </div>
       
    </div>
</div>
   
             
</ItemTemplate>
	       

	
    </asp:ListView>
		   
		</div>
</table>
</div>
    
</div>


</asp:Content>

