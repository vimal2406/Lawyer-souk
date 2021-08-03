<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FindLawyer.aspx.cs" Inherits="Home1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <title></title>
     <!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
      <script type="text/javascript" language="javascript">
          function character(evt) {
              evt = (evt) ? evt : event;
              var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
    ((evt.which) ? evt.which : 0));
              if (charCode > 31 && (charCode < 65 || charCode > 90) &&
    (charCode < 97 || charCode > 122)) {
                  alert("Enter only characters");
                  return false;
              }
              return true;
          }
    </script> 
   
   
   
    <script type="text/javascript">

        function CheckNumericKeyInfo(char1, mozChar) {
            if (mozChar != null) { // Look for a Mozilla-compatible browser
                if ((mozChar >= 48 && mozChar <= 57) || char1 == 8)
                    RetVal = true;
                else {
                    RetVal = false;
                }
            }
            else { // Must be an IE-compatible Browser
                if ((char1 >= 48 && char1 <= 57) || char1 == 8) RetVal = true;
                else {
                    RetVal = false;
                }
            }
            return RetVal;
        }
    </script>
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
	
	<!-- banner slider css file -->
	<link href="css/JiSlider.css" rel="stylesheet">
	<!-- //banner slider css file -->

	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<style>
.square, .btn {
    border-radius: 0px!important;
}

/* -- color classes -- */
.coralbg {
    background-color: #FA396F;
} 

.coral {
    color: #FA396f;
}

.turqbg {
    background-color: #46D8D2;
}

.turq {
    color: #46D8D2;
}

.white {
    color: #fff!important;
}

/* -- The "User's Menu Container" specific elements. Custom container for the snippet -- */
div.user-menu-container {
  z-index: 10;
  background-color: #fff;
  margin-top: 20px;
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
  -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}

div.user-menu-container .btn-lg {
    padding: 0px 12px;
}

div.user-menu-container h4 {
    font-weight: 300;
    color: #8b8b8b;
}

div.user-menu-container a, div.user-menu-container .btn  {
    transition: 1s ease;
}

div.user-menu-container .thumbnail {
   width:100%;
   min-height:200px;
   border: 0px!important;
   padding: 0px;
   border-radius: 0;
   border: 0px!important;
}

/* -- Vertical Button Group -- */
div.user-menu-container .btn-group-vertical {
    display: block;
}

div.user-menu-container .btn-group-vertical>a {
    padding: 20px 25px;
    background-color: #46D8D2;
    color: white;
    border-color: #fff;
}

div.btn-group-vertical>a:hover {
    color: white;
    border-color: white;
}

div.btn-group-vertical>a.active {
    background: #FA396F;
    box-shadow: none;
    color: white;
}
/* -- Individual button styles of vertical btn group -- */
div.user-menu-btns {
    padding-right: 0;
    padding-left: 0;
    padding-bottom: 0;
}

div.user-menu-btns div.btn-group-vertical>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #46D8D2;
}
/* -- The main tab & content styling of the vertical buttons info-- */
div.user-menu-content {
    color: #323232;
}

ul.user-menu-list {
    list-style: none;
    margin-top: 20px;
    margin-bottom: 0;
    padding: 10px;
    border: 1px solid #eee;
}
ul.user-menu-list>li {
    padding-bottom: 8px;
    text-align: center;
}

div.user-menu div.user-menu-content:not(.active){
  display: none;
}

/* -- The btn stylings for the btn icons -- */
.btn-label {position: relative;left: -12px;display: inline-block;padding: 6px 12px;background: rgba(0,0,0,0.15);border-radius: 3px 0 0 3px;}
.btn-labeled {padding-top: 0;padding-bottom: 0;}

/* -- Custom classes for the snippet, won't effect any existing bootstrap classes of your site, but can be reused. -- */

.user-pad {
    padding: 20px 25px;
}

.no-pad {
    padding-right: 0;
    padding-left: 0;
    padding-bottom: 0;
}

.user-details {
    background: #eee;
    min-height: 333px;
}

.user-image {
  max-height:200px;
  overflow:hidden;
}

.overview h3 {
    font-weight: 300;
    margin-top: 15px;
    margin: 10px 0 0 0;
}

.overview h4 {
    font-weight: bold!important;
    font-size: 40px;
    margin-top: 0;
}

.view {
    position:relative;
    overflow:hidden;
    margin-top: 10px;
}

.view p {
    margin-top: 20px;
    margin-bottom: 0;
}
 
.caption {
    position:absolute;
    top:0;
    right:0;
    background: rgba(70, 216, 210, 0.44);
    width:100%;
    height:100%;
    padding:2%;
    display: none;
    text-align:center;
    color:#fff !important;
    z-index:2;
}

.caption a {
    padding-right: 10px;
    color: #fff;
}

.info {
    display: block;
    padding: 10px;
    background: #eee;
    text-transform: uppercase;
    font-weight: 300;
    text-align: right;
}

.info p, .stats p {
    margin-bottom: 0;
}

.stats {
    display: block;
    padding: 10px;
    color: white;
}

.share-links {
    border: 1px solid #eee;
    padding: 15px;
    margin-top: 15px;
}

.square, .btn {
    border-radius: 0px!important;
}

/* -- media query for user profile image -- */
@media (max-width: 767px) {
    .user-image {
        max-height: 400px;
    }
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- header -->
<header>
	<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand"  href="Home.aspx">
				<i class="fas fa-boxes"></i>LAWYER SOUK
			</a>
			<button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto text-center">
					<li class="nav-item active  mr-lg-3">
						<a class="nav-link" href="Home.aspx">Home
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item  mr-lg-3">
					<a class="nav-link" href="About.aspx">About </a>
					</li>
					<li class="nav-item  mr-lg-3">
						<a class="nav-link" href="FindLawyer.aspx">Search Lawyer</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="Home.aspx">Contact</a>
					</li>
				</ul>
				<div class="buttons">
<asp:Button ID="Button3" runat="server" class="btn btn-info btn-lg-block w3ls-btn px-4 text-uppercase mr-2" Text="Login" CausesValidation="false" onclick="Button1_Click" ></asp:Button>
				

                    <asp:Button ID="Button4" runat="server" class="btn btn-info btn-lg-block w3ls-btn px-4 text-uppercase mr-2" Text="Register" CausesValidation="false" onclick="Button2_Click"></asp:Button>
					
				</div>
				
			</div>
		</nav>
	</div>
</header>
<!-- //header -->
		

	 
          <div class="container">
		
          <div class="row">
				
                    <div class="col-lg-12">
                    <ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.html">Serach </a>
		</li>
		<li class="breadcrumb-item active">Lawyer</li>
	</ol>
                    </div>
                <div class="col-lg-12">
                    <ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.html">Select Law Field </a>
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
		</li>
		<li class="breadcrumb-item active"> <asp:Button ID="Button5" runat="server" Text="Find" class="form-control"  OnClick="Button5_Click" CausesValidation="False" 
                                   />	</li>
	</ol>
                    </div>

              </div>
         
         
       
       
<asp:ListView runat="server" ID="listView" GroupItemCount="6" OnItemDataBound="listView_ItemDataBound" >
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
                         <asp:Label ID="Label1"  runat="server" Text='<%#Eval("LawyerId")%>' Visible="false"></asp:Label>
           <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
   <asp:LinkButton ID="LinkButton3" class="btn btn-labeled btn-success"  OnClick="btnAdd13_Click" runat="server" Text="View all activity"></asp:LinkButton>
                     
                    </li>
                </ul>
            </div>
            <div class="user-menu-content">
                <h3>
                    Your Inbox
                </h3>
                <ul class="user-menu-list">
                    <li>
                        <h4>From Roselyn Smith <small class="coral"><strong>NEW</strong> <i class="fa fa-clock-o"></i> 7:42 A.M.</small></h4>
                    </li>
                    <li>
                        <h4>From Jonathan Hawkins <small class="coral"><i class="fa fa-clock-o"></i> 10:42 A.M.</small></h4>
                    </li>
                    <li>
                        <h4>From Georgia Jennings <small class="coral"><i class="fa fa-clock-o"></i> 10:42 A.M.</small></h4>
                    </li>
                    <li>
                        <button type="button" class="btn btn-labeled btn-danger" href="#">
                            <span class="btn-label"><i class="fa fa-envelope-o"></i></span>View All Messages</button>
                    </li>
                </ul>
            </div>
            <div class="user-menu-content">
                <h3>
                    Trending
                </h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="view">
                            <div class="caption">
                                <p>47LabsDesign</p>
                                <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                            </div>
                            <img src="http://24.media.tumblr.com/273167b30c7af4437dcf14ed894b0768/tumblr_n5waxesawa1st5lhmo1_1280.jpg" class="img-responsive">
                        </div>
                        <div class="info">
                            <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                            <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                        </div>
                        <div class="stats turqbg">
                            <span class="fa fa-heart-o"> <strong>47</strong></span>
                            <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="view">
                            <div class="caption">
                                <p>47LabsDesign</p>
                                <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                            </div>
                            <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                        </div>
                        <div class="info">
                            <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                            <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                        </div>
                        <div class="stats turqbg">
                            <span class="fa fa-heart-o"> <strong>47</strong></span>
                            <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="user-menu-content">
                <h2 class="text-center">
                    START SHARING
                </h2>
                <center><i class="fa fa-cloud-upload fa-4x"></i></center>
                <div class="share-links">
                    <center><button type="button" class="btn btn-lg btn-labeled btn-success" href="#" style="margin-bottom: 15px;">
                            <span class="btn-label"><i class="fa fa-bell-o"></i></span>A FINISHED PROJECT
                    </button></center>
                    <center><button type="button" class="btn btn-lg btn-labeled btn-warning" href="#">
                            <span class="btn-label"><i class="fa fa-bell-o"></i></span>A WORK IN PROGRESS
                    </button></center>
                </div>
            </div>
        </div>
    </div>
</div>
   
             
</ItemTemplate>
	       

	
    </asp:ListView>
		   
		 </div>
		
<!-- footer -->
        <br />
<section class="copyright py-4">

	<div class="agileits_w3layouts-copyright text-center">
		<p>© 2021 Lawyer Souk. All Rights Reserved |  </a>
		</p>
	</div>
</section>
<!-- //footer -->

	<!-- Login modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-uppercase" id="exampleModalLabel1">Login</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Mobile Number</label>
							
						<asp:TextBox ID="txtloginmobile" runat="server"  class="form-control" 
                                 placeholder="Mobile Number"   OnKeyPress="return CheckNumericKeyInfo(event.keyCode, event.which)" 
                                    MaxLength="10"></asp:TextBox>
                                     	<h5>    
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
      ControlToValidate="txtloginmobile" ErrorMessage="Enter Valid MobileNo" 
    ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator></h5> 
      <h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                    runat="server" ErrorMessage="EnterMobileNo" ControlToValidate="txtloginmobile" 
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5>

						</div>
						<div class="form-group">
<label for="recipient-name1" class="col-form-label">Password</label>
                            <asp:TextBox ID="txtloginpass" runat="server" class="form-control" placeholder=" Enter Password"
                                    TextMode="Password">  </asp:TextBox>
                                    <h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                    runat="server" ErrorMessage="EnterPassword" ControlToValidate="txtloginpass" 
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5>
						</div>
						
						<div class="right-w3l mt-4 mb-3">
						 <asp:Button ID="Button2" runat="server" Text="Login" class="form-control" CausesValidation="true" 
                                    onclick="Button2_Click" />		
						</div>
					

				</div>
			</div>
		</div>
	</div>
	<!-- //Login modal -->

	<!-- Register modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-uppercase" id="exampleModalLabel1">EPP Quick Register Form </h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Enter Full Name</label>
                            <asp:TextBox ID="txtfullname" class="form-control"  onkeypress="return character(event)" placeholder="Full Name" runat="server"></asp:TextBox>
						<span>	<h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="Enter Full Name" ControlToValidate="txtfullname" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5></span>
						</div>
						
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Email id</label>
							
						<asp:TextBox ID="txtemail" runat="server" placeholder="Email id" class="form-control"></asp:TextBox>
                              	<h5> <asp:RegularExpressionValidator ID="validateEmail"    
  runat="server" ErrorMessage="Invalid email."
  ControlToValidate="txtemail" 
  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" /> </h5> 
                        </div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Mobile Number</label>
							
						<asp:TextBox ID="txtmobile" runat="server"  class="form-control" 
                                 placeholder="Mobile Number"   OnKeyPress="return CheckNumericKeyInfo(event.keyCode, event.which)" 
                                    MaxLength="10"></asp:TextBox>
                                     	<h5>    
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="txtmobile" ErrorMessage="Enter Valid MobileNo" 
    ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator></h5> 

                        </div>
						<div class="form-group">
							<label for="recipient-name1" class="col-form-label">Password</label>
                            <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder=" Enter Password"
                                    TextMode="Password">  </asp:TextBox>
                                 	<h5>  
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid 8 Digit Alpha Numeric Password"
        ValidationExpression="^(?=.*[a-z]).{8,15}$"
        ControlToValidate="txtpass" ForeColor="Red"></asp:RegularExpressionValidator></h5>

						</div>
                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">Gender</label>
							
						<asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                              <asp:ListItem>Male</asp:ListItem>
                               <asp:ListItem>Female</asp:ListItem>
                            
                                  </asp:DropDownList>

                        </div>

                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">Address</label>
							<asp:TextBox ID="txtaddress" class="form-control" runat="server"></asp:TextBox>
                                                    	<h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="Enter Address" ControlToValidate="txtaddress" 
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5>
					
                        </div>
<div class="form-group">
							<label for="recipient-name" class="col-form-label">City</label>
							<asp:TextBox ID="txtcity" class="form-control" runat="server"></asp:TextBox>
                                                    	<h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                    runat="server" ErrorMessage="Enter City" ControlToValidate="txtcity" 
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5>
					
                        </div>
                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">Pincode</label>
							 <asp:TextBox ID="pincode" runat="server"  class="form-control"
                                    OnKeyPress="return CheckNumericKeyInfo(event.keyCode, event.which)" 
                                    MaxLength="6"></asp:TextBox>
                        </div>

                       

						<div class="right-w3l mt-4 mb-3">
                        <asp:Button ID="Button1" runat="server" Text="Register" class="form-control" CausesValidation="true" 
                                    onclick="Button1_Click" />	
						
						</div>
				

				</div>
			</div>
		</div>
	</div>
	<!-- //Register modal -->
	
<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->	

	<!-- Banner Slider js script file-->
		<script src="js/JiSlider.js"></script>
		<script>
		    $(window).load(function () {
		        $('#JiSlider').JiSlider({
		            color: '#fff',
		            start: 1,
		            reverse: false
		        }).addClass('ff')
		    })
		</script>
		<script>
		    var _gaq = _gaq || [];
		    _gaq.push(['_setAccount', 'UA-36251023-1']);
		    _gaq.push(['_setDomainName', 'jqueryscript.net']);
		    _gaq.push(['_trackPageview']);

		    (function () {
		        var ga = document.createElement('script');
		        ga.type = 'text/javascript';
		        ga.async = true;
		        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		        var s = document.getElementsByTagName('script')[0];
		        s.parentNode.insertBefore(ga, s);
		    })();
		</script>
	<!-- //Banner Slider js script file-->

	<!-- tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
	    $(document).ready(function () {
	        $('#horizontalTab').easyResponsiveTabs({
	            type: 'default', //Types: default, vertical, accordion           
	            width: 'auto', //auto or any width like 600px
	            fit: true,   // 100% fit in a container
	            closed: 'accordion', // Start closed if in accordion view
	            activate: function (event) { // Callback function if tab is switched
	                var $tab = $(this);
	                var $info = $('#tabInfo');
	                var $name = $('span', $info);
	                $name.text($tab.text());
	                $info.show();
	            }
	        });
	        $('#verticalTab').easyResponsiveTabs({
	            type: 'vertical',
	            width: 'auto',
	            fit: true
	        });
	    });
	</script>
	<!--//tabs-->
	
	<!-- for-Testimonials -->
	<!-- required-js-files-->
	<link href="css/owl.carousel.css" rel="stylesheet">
		<script src="js/owl.carousel.js"></script>
			<script>
		$(document).ready(function() {
		  $("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		  });
		});
		</script>
	<!--//required-js-files-->
	<!-- //for-Testimonials -->

	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
	        });
	    });
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	
<!-- //js-scripts -->

    </form>
</body>
</html>
