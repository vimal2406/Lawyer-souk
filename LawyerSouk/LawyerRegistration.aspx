<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LawyerRegistration.aspx.cs" Inherits="Home1" %>

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
                    alert("Enter only characters");
                    RetVal = false;
                }
            }
            else { // Must be an IE-compatible Browser
                if ((char1 >= 48 && char1 <= 57) || char1 == 8) RetVal = true;
                else {
                    alert("Enter only characters");
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
			<a class="navbar-brand" href="Home.aspx">
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
<asp:Button ID="Button3" runat="server" class="btn btn-info btn-lg-block w3ls-btn px-4 text-uppercase mr-2" Text="Login" CausesValidation="false" onclick="Button3_Click"></asp:Button>
				

                    <asp:Button ID="Button4" runat="server" class="btn btn-info btn-lg-block w3ls-btn px-4 text-uppercase mr-2" Text="Register" CausesValidation="false"  onclick="Button4_Click"></asp:Button>
					
				</div>
				
				
			</div>
		</nav>
	</div>
</header>
<!-- //header -->
<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-uppercase" id="exampleModalLabel1">Lawyer Register Form </h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<div class="form-group">
							<label for="recipient-nameid" class="col-form-label">Lawyer Id</label>
                            <asp:TextBox ID="txtid" class="form-control"  ReadOnly="true"  runat="server"></asp:TextBox>
						
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">EnterName</label>
                            <asp:TextBox ID="txtfullname" class="form-control"  onkeypress="return character(event)" placeholder="Full Name" runat="server"></asp:TextBox>
						<span>	<h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="Enter Full Name" ControlToValidate="txtfullname" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5></span>
						</div>
						
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Email</label>
							
						<asp:TextBox ID="txtemail" runat="server" placeholder="Email id" class="form-control"></asp:TextBox>
                              	<h5> <asp:RegularExpressionValidator ID="validateEmail"    
  runat="server" ErrorMessage="Invalid email."
  ControlToValidate="txtemail" 
  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" /> </h5> 
                        </div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">ContactNo</label>
							
						<asp:TextBox ID="txtmobile" runat="server"  class="form-control" 
                                 placeholder="Mobile Number"   OnKeyPress="return CheckNumericKeyInfo(event.keyCode, event.which)" 
                                    MaxLength="10"></asp:TextBox>
                                     	<h5>    
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="txtmobile" ErrorMessage="Enter Valid MobileNo" 
    ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator></h5> 

                        </div>
						<div class="form-group">
							<label for="recipient-name1" class="col-form-label">SelectPassword</label>
                            <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder=" Enter Password"
                                    TextMode="Password">  </asp:TextBox>
                                 	<h5>  
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid 8 Digit Alpha Numeric Password"
        ValidationExpression="^(?=.*[a-z]).{8,15}$"
        ControlToValidate="txtpass" ForeColor="Red"></asp:RegularExpressionValidator></h5>

						</div>
                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">Law Practice Experience</label>
							
						<asp:DropDownList ID="ddlExp" runat="server" class="form-control">
                              <asp:ListItem>Fresher</asp:ListItem>
                               <asp:ListItem>1 Year</asp:ListItem>
                            
                                  <asp:ListItem>2 Year</asp:ListItem>
                              <asp:ListItem>3 Year</asp:ListItem>
                              <asp:ListItem>4 Year</asp:ListItem>
                              <asp:ListItem>More Than 5 Year</asp:ListItem>
                            
                                  <asp:ListItem>More Than 10 Year</asp:ListItem>
                            
                                  </asp:DropDownList>

                        </div>
                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">Areas of Law You Specialise in</label>
							
						<asp:DropDownList ID="ddlSpicial" runat="server" class="form-control">
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

                        </div>

                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">WorkingDesc</label>
							<asp:TextBox ID="txtWorkingDesc" class="form-control" runat="server"></asp:TextBox>
                                                    	<h5>   <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="Enter Address" ControlToValidate="txtWorkingDesc" 
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5>
					
                        </div>
                         <div class="form-group">
							<label for="recipient-name" class="col-form-label">Job Offer BY YOU Type</label>
							
						<asp:DropDownList ID="ddljotype" runat="server" class="form-control">
                              <asp:ListItem>Permanent</asp:ListItem>
                               <asp:ListItem>Contract</asp:ListItem>
                            
                                  </asp:DropDownList>

                        </div>
<div class="form-group">
							<label for="recipient-name" class="col-form-label">Location</label>
							<asp:TextBox ID="txtlocation" class="form-control" runat="server"></asp:TextBox>
                                                    	<h5>   
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                    runat="server" ErrorMessage="EnterLocation" ControlToValidate="txtlocation" 
                                        ForeColor="Red"></asp:RequiredFieldValidator> </h5>
					
                        </div>
                        <div class="form-group">
							<label for="recipient-name" class="col-form-label">EstablishedYear</label>
							 <asp:TextBox ID="txtyear" runat="server"  class="form-control"
                                    OnKeyPress="return CheckNumericKeyInfo(event.keyCode, event.which)" 
                                    MaxLength="6"></asp:TextBox>
                        </div>

                         <div class="form-group">
							<label for="recipient-name" class="col-form-label">Upload Register Lawyer Certificate Image</label>
                             <asp:FileUpload ID="addimage" runat="server"  class="form-control" />
                             <asp:RequiredFieldValidator
                                 ID="RequiredFieldValidator4" runat="server" 
                                 ErrorMessage="Upload" ControlToValidate="addimage" 
                                 ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
							<label for="recipient-name" class="col-form-label">Id Photo Image</label>
                             <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" />
                             <asp:RequiredFieldValidator
                                 ID="RequiredFieldValidator5" runat="server" 
                                 ErrorMessage="Upload" ControlToValidate="FileUpload1" 
                                 ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

						<div class="right-w3l mt-4 mb-3">
                        <asp:Button ID="Button1" runat="server" Text="Register" class="form-control" CausesValidation="true" 
                                    onclick="Button1_Click" />	
						
						</div>
				

				</div>
			</div>
		</div>
	</div>

<section class="copyright py-4">
	<div class="agileits_w3layouts-copyright text-center">
		<p>© 2018 Employee power. All Rights Reserved |  </a>
		</p>
	</div>
</section>

		
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
