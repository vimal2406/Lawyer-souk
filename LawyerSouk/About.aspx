<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Home1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Employee power Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
						<a class="nav-link" href="Contact.aspx">Contact</a>
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

<!-- banner slider-->

<section class="about py-5">
	<div class="container-fluid py-lg-5 py-3">
		<div class="row about_grids">
			<div class="col-lg-4 col-md-6 team_grid1">
				<h3 class="heading text-uppercase">About Us</h3>
				<p>When it comes to lawyer’s requirements/necessities, our easy-to-use  solution for Lawyer / Law Firms allows you to keep record all your record confidential for better output of team members.</p>
				<p class="second_para">  It improvise your team’s work effectively. With Adlaw, you’ll have all the data you need to coach your team to success. Lawyers or Law Firms can have all details on one click in real-time. No matters where you are. You can discharge your obligation at your ease with roaming office facilities.With the help of Adlaw CRM you can get a complete case management solution, manage your Scheduling Time, Daily service report, information of team members, hearing date details for the lawyers/law firms to assign priorities, build momentum, collaborate without confusions and ensure that action steps are taken on time, every time. If not, don’t worry, Adlaw will remind you.</p>
			</div>
			<div class="col-lg-3 col-md-6 about_img mt-md-0 mt-5 ">
				<div class="about_image">
					<img src="images/about.jpg" alt="" class="img-fluid">
				</div>
			</div>
			<div class="col-lg-5 col-md-12 about-right mt-lg-0 mt-5 pl-lg-5">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li><h3>Mission</h3></li>
						<li><h3>Vision</h3></li>
						<li><h3>Values</h3></li>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab1">
							<h4 class="">Case Management.offers a complete case management solution for lawyers, law firms and their clients. The features are stuffed with various sub-includes that empower you to accomplish more in lesser time. Here is a run-down of the sub-features – we encourage you to attempt our product for nothing but to audit its capacities altogether.</h4>
							<p class=""> Cases List Everything you have to record, including a crate to include an essential portrayal of the case, is given. You can allocate each case to all or a portion of the team members that you have added to the software with the end goal of coordinated effort. You can also record date of documenting and include an essential depiction about the case, customer or any pertinent specifics. Once you have a list of cases you can sort and view by 'running' closed’ or ‘transferred/NOC’ filters.You can search cases by various criteria, for example, title, case number and more.</p>
							<p class=""> There is no other quicker approach to discover and refer to cases, particularly in case you're working on various cases and have a full case diary. Here you can find All Cases, On Going Cases, Won Cases (Case Over in favor of client), Lost Cases (Case over against the favour) and Case that Withdrawn by client.</p>
						</div>
						<div class="tab2">
							<h4 class="">We offer incorporated solutions that address our customer’s needs. All solutions are tailored to customer-specific requirements. Reduced overlap time, speedier turnaround time and prompter responses are ingrained into our system.</h4>
							<p class="">
								Our aim to establish Lawyer souk is to make an interactive online platform that makes it faster and easier to discover and employ top-rated lawyers, law school and law company in any city/court around India because you deserve access to top-rate, proficient lawful advice from best lawyers out there. We are set to make the legal experience exceptional by making lawful administrations high quality, financially savvy and on-demand for every need.

								As the leading free legal information website, adlaw.in works to bring consumers and attorneys the legal news, information, and resources they need. Whether you are a consumer looking for an attorney, a DIY form, some information to better understand a legal issue, or an attorney looking to grow your practice and better serve your clients, AdLaw wants to be the trusted source you turn to for answers. We strive to continuously improve our own social and environmental impacts, support our members and their firms to further improve theirs and Champion the wide range of contributions positively made by the profession to
							</p>
						</div>
						<div class="tab3">
							<h4 class="">We make highly quality legal solutions accessible and affordable to all. We help individuals get their legal questions answered, consult lawyers on the phone, and to find a competent lawyer without wasting thousands of rupees on the wrong lawyer..</h4>
							<p class="">a new education resource for those considering a career in law. Developed with input from experienced lawyers and education professionals, it features contributions from the Bar Council and other legal professional groups and law firms. It includes free careers guides and step-by-step guides on the study of law, work experience and training opportunities. Lawyer souk has been created by the The Career Portal, the same company that created The Medic Portal. </p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>
<!-- //About -->
		
<!-- services -->
<section class="services">
	<div class="service-overlay py-5">
	<div class="container-fluid py-lg-5 py-3">
		<div class="row service_grids">
			<div class="col-lg-2 col-md-3 mb-lg-0 mb-5 ser_grid1 icon1">
				<span class="fab fa-forumbee"></span>
				<h3>Job Seeker </h3>
				<p>The job hunter or seeker typically first looks for
				job vacancies or employment opportunities.</p>
				<a href="#">Read More <span class="fa fa-angle-right"></span></a>
			</div>
			<div class="col-lg-2 col-md-3 mb-lg-0 mb-5 ser_grid1 icon2">
				<span class="fab fa-foursquare"></span>
				<h3>Employer</h3>
				<p>An employer is an organization, institution, government entity, company, professional services firm or individual who employs or puts to work, a person who is called an employee or a staff member</p>
				<a href="#">Read More <span class="fa fa-angle-right"></span></a>
			</div>
			<div class="col-lg-2 col-md-3 mb-lg-0 mb-5 ser_grid1 icon3">
				<span class="fab fa-first-order"></span>
				<h3>Administrator</h3>
				<p> a person who acts as the administrator for an Internet gaming or other type of server.</p>
				<a href="#">Read More <span class="fa fa-angle-right"></span></a>
			</div>
			<div class="col-lg-4 col-12 mt-lg-0 mt-5 team_grid1">
				<h3 class="heading text-uppercase">Our Services</h3>
				<p>We will provide online contract base Company can request for an interview to user,User can also request to company to get a job.  
</p>
				<p class="second_para">Remind user when there is vacancy for similar job</p>
			</div>
		</div>
	</div>
	</div>
</section>
<!-- //services -->

<!-- Team -->
<section class="team py-5 my-lg-5 my-3">
	<div class="container-fluid ">
	<div class="row team_grids">
		<div class="col-lg-4 col-12 mb-lg-0 mb-4 team_grid1">
			<h3 class="heading text-uppercase">Our Team</h3>
			<p>Always reliable. A great team player is constantly reliable day in and day out, not just some of the time.</p>
<p>Communicates with confidence. Good team players might silently get the work done but shy away from speaking up and speaking often. </p>
<p>Does more than asked. While getting the work done and doing your fair share is expected of good team players, great team players know that taking risks.
</p>
			<p class="second_para"> Adapts quickly and easily. Great team players don’t passively sit on the sideline and see change happen. </p>
		</div>
		<div class="col-lg-2 col-md-3 col-6 mb-md-0 mb-5 w3l_team_grid">
			<div class="view view-second">
				<img src="images/t1.jpg" alt=" " class="img-fluid" />
			</div>
			<h4 class="my-2">Team MEMBER NAme</h4>
			<p></p>
		</div>
		<div class="col-lg-2 col-md-3 col-6 mb-md-0 mb-5 w3l_team_grid">
			<div class="view view-second">
				<img src="images/t2.jpg" alt=" " class="img-fluid" />
			</div>
			<h4 class="my-2">Team MEMBER NAme</h4>
		</div>
		<div class="col-lg-2 col-md-3 col-6 w3l_team_grid">
			<div class="view view-second">
				<img src="images/t3.jpg" alt=" " class="img-fluid" />
			</div>
			<h4 class="my-2">Team MEMBER NAme</h4>
			<p></p>
		</div>
		<div class="col-lg-2 col-md-3 col-6 w3l_team_grid">
			<div class="view view-second">
			</div>
		</div>
	</div>
	</div>
</section>
<!-- //Team -->


<!-- footer -->
<section class="footer-top pt-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<form action="#" method="post">
					<input type="email" placeholder="Enter your email..." name="email" >
					<input type="submit" value="Subscribe">
				</form>
			</div>
			<div class="col-lg-6 social-icon mt-lg-0 mt-3 footer">
				<div class="icon-social">
					<h3>Socialize with us</h3>
					<a href="#" class="button-footr">
						<i class="fab fa-facebook-f"></i>
					</a>
					<a href="#" class="button-footr">
						<i class="fab fa-twitter"></i>
					</a>
					<a href="#" class="button-footr">
						<i class="fab fa-dribbble"></i>
					</a>
					<a href="#" class="button-footr">
						<i class="fab fa-pinterest-p"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="agile-footer middle w3ls-section">
	<div class="container">
		<div class="agileits_w3layouts-footer-bottom">
			<div class="row w3_agile-footer-grids py-5">
				<div class="col-lg-2 col-sm-3 mb-sm-0 mb-4 px-sm-0 px-4 w3_agile-footer1 f1">	
					<h5 class="mb-3">Useful Links </h5>
						<ul class="w3ls-footer-bottom-list">
						<li><a href="about.html">About us</a></li>
						<li><a href="#">What we do</a></li>
						<li><a href="projects.html">Jobs</a></li>
						<li><a href="#">Team members</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-lg-7 col-sm-9 mb-sm-0 mb-4 px-sm-0 px-4 row w3_agile-footer1 f2">
					<div class="col-lg-3 col-sm-3  mb-sm-0 mb-4 inner-li">
						<h5 class="mb-3">Account</h5>
						<ul class="w3ls-footer-bottom-list">
							<li><a href="#" data-toggle="modal" aria-pressed="false" data-target="#exampleModal">Login</a></li>
							<li><a href="#" data-toggle="modal" aria-pressed="false" data-target="#exampleModal1">Create account</a></li>
						</ul>
					</div>
					
					<div class="col-lg-6 col-sm-7  mb-sm-0 mb-4 inner-li">
						<h5 class="mb-3">Address</h5>
						<ul class="w3ls-footer-bottom-list">
							<li> <span class="fas fa-map-marker"></span> 348 JobStreet Majalpur<span> 390210, India </span></li>
							<li> <span class="fas fa-envelope"></span> <a href="mailto:name@example.com"> epp@gmail.com</a> </li>
							<li> <span class="fas fa-phone"></span> +91 9878987898 </li>
							<!-- <li> <span class="fas fa-globe"></span> <a href="#"> www.website.com</a> </li> -->
							<li> <span class="fas fa-clock"></span> Working Hours : 10:00 a.m - 6:00 p.m</li>
						</ul>
					</div>
					
					<div class="col-lg-3 col-sm-2 inner-li">
						<h5 class="mb-3">support</h5>
						<ul class="w3ls-footer-bottom-list">
							<li>
								<a href="#">24/7 Service</a>
							</li>
							<li>
								<a href="#">FAQ's</a>
							</li>
							<li>
								<a href="#">Media Queries</a>
							</li>
							<li>
								<a href="#">Others</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-lg-3 col-md-12 px-sm-0 px-4 w3_agile-footer1 f3">
						<h5 class="mb-3">Latest Tweets</h5>
					<ul class="tweet-agile">
						<li>
							
						</li>
						<li>
							
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
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
