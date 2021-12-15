<%@page errorPage="error_page.jsp" %>


<%@page import="com.itnext.entities.User"%>
<%
    
    response.setHeader("Cache-control","no-cache");
    response.setHeader("Cache-control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader("Expire",0);
    //login validation
    
    User user=(User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login_page.jsp");
    }

    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ItNext Solution</title>
        <!-- css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/myStyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
        <style>
           
            
        </style>
    
    
    </head>
    <body>
        
   
        
  <!-- header -->
  
        <!-- header -->

     <div class="container">
<nav class="navbar navbar-expand-lg fixed-top navbar-light primary-background border-bottom border-primary">
     <a class="navbar-brand mx-auto mb-0" href="index.jsp"><img src="img/logo21.png" alt=""/>
         <h6 class="text_align_right text-dark my-0 pt-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fast And Affordable Service</h6>
     </a>
         
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mx-auto">
      <li class="nav-item">
          <a class="nav-link" href="profile.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="loginAbout.jsp">ABOUTUS <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="loginServices.jsp">SERVICES<span class="sr-only">(current)</span></a>
      </li>
    <!-- <li class="nav-item">
          <a class="nav-link" href="loginProduct.jsp">BUY PRODUCT<span class="sr-only">(current)</span></a>
      </li>-->
     
     
       <li class="nav-item active">
           <a class="nav-link" href="loginContact.jsp">CONTACT</a>
      </li>
      
      <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        PROFILE
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#profile-modal"><%= user.getName().toUpperCase()  %></a>
                        <a class="dropdown-item" href="register_page.jsp">SIGN UP</a>
                        <a class="dropdown-item" href="login_page.jsp">LOG IN</a>
                        <a class="dropdown-item" href="LogoutServlet">LOGOUT</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">OTHER ACCOUNT</a>
                    </div>
         </li>
       
      <li>
          <a href="#" data-toggle="modal" data-target="#search_bar">&nbsp;&nbsp;<i class="fa fa-search" aria-hidden="true"></i></a>
      </li>
       
    </ul>
     <!-- <button class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Payment</button>
       --><a class="btn btn-outline-light btn-lg bc" href="#contact" style="border-radius: 50px;">Service Request</a>  </div>
 
</nav>
 
</div>
 
 
               
  <!-- end header top -->

        
  <!-- end header top -->
  <!-- inner page banner -->
  <div class="section">
      <img src="img/inner_page_banner.jpg" alt="" style="width:100%; height: 400px">  
  </div>
<!-- end inner page banner -->


<section id="Contact" class="container  my-4"> 
               <div class="row">
                    <div class="col-md-12">
                      <div class="full">
                        <div class="main_heading text_align_center">
                          <h2>Contact Us</h2>
                          <p class="large">Our goal is to provide the best customer service and to answer all of your questions in a timely manner.</p>
                        </div>
                      </div>
                    </div>
                 </div>
           
		
		<div class="contact-section">
			<div class="ear-piece">
			<!--	<img class="img-responsive" src="images/ear-piece.png" alt="">-->
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="contact-text">
							<h3>Contact</h3>
							<address>
								E-mail: abhishekkumawat9696@gmail.com<br>
								Phone: +91 9828 1326 18<br>
                                                                Website:<a href="http://bebound.myownwebsite.in"> bebound.myownwebsite.in</a><br>
								Instagram:<a href="http://insatgram.com//abhishek_kumawat297"> abhishek_kumawat297</a>
							</address>
						</div>
						<div class="contact-address">
							<h3>Address</h3>
							<address>
								Khirni Phatak, Jhotwara,<br>
								Jaipur,302012,<br>
								Rajasthan<br>
								
							</address>
						</div>
					</div>
					<div class="col-md-8" id="contact1">
						<div id="contact-section">
                                                    <h3 class="text-white">Send a message</h3>
					    	<div class="status alert alert-success" style="display: none"></div>
					    	<form id="main-contact-form" class="contact-form" name="contact-form" method="POST" action="ContactServlet">
					            <div class="form-group">
					                <input type="text" name="user_name" class="form-control" required="required" placeholder="Name">
					            </div>
					            <div class="form-group">
					                <input type="text" name="user_phone" class="form-control" required="required" placeholder="Phone">
					            </div>
					           
					            <div class="form-group">
					                <input type="email" name="user_email" class="form-control" required="required" placeholder="Email ID">
					            </div>
					            <div class="form-group">
					                <textarea name="user_message" id="message" required="required" class="form-control" rows="4" placeholder="Enter your message"></textarea>
					            </div>                        
					            <div class="form-group ">
                                                        <div class="container text-center">
                                                            <button type="submit" class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Send Request</button>                                                        </div>
                                                        </div>
					        </form>	       
					    </div>
					</div>
				</div>
			</div>
		</div>		
	</section>
    <!--/#contact-->
  

  
  
<!-- Modal -->
<div class="modal fade" id="search_bar" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-8 col-md-8 col-sm-8 offset-lg-2 offset-md-2 offset-sm-2 col-xs-10 col-xs-offset-1">
            <div class="navbar-search">
              <form action="#" method="get" id="search-global-form" class="search-global">
                <input type="text" placeholder="Type to search" autocomplete="off" name="s" id="search" value="" class="search-global__input">
                <button class="search-global__btn"><i class="fa fa-search"></i></button>
                <div class="search-global__note">Begin typing your search above and press return to search.</div>
                <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
              </form>
                
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Model search bar -->



<!-- footer -->
<%@include file="footer.jsp" %>
<!-- end footer -->







        
        
        
        
        
         <!--java script-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
                integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="js/myJS.js" type="text/javascript"></script>
            <script src="http://use.fontawesome.com/releases/v5.0.8/js/all.js">
                </script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
                
            </script>
            <script>
                
          
     $(document).ready(function()
      {
          console.log("page is ready........");
          
          $("#main-contact-form").on('submit',function(event){
                event.preventDefault();
                
               // var f = $(this).serialize();
               
               let f= new FormData(this);
               
                //console.log(f);
               
                $.ajax({
                    url:"ContactServlet",
                    data:f,
                    type:'POST',
                    success:function(data,textStatus,jqXHR){
                        console.log(data);
                        console.log("success.......");
                                    
                        if(data.trim() == 'done')
                        {
                            
                            swal("Send successfully.........");
                                
                  
                          //  $('#msg').html("Successfully Registered");
                           // $("#msg").addClass('green-text');
  
                        }
                        else
                        {
                            swal(data);
                          //  $('#msg').html("something went wrong on server...!!");
                           // $("#msg").addClass('red-text');
                        }
                        
                    },
                    error:function(jqXHR,textStatus,errorThrown){
                        console.log(data);
                        console.log("error.......");
                        
                        swal("Something went wrong.. try again...");
                                
                        
       
                    },
                    processData: false,
                    contentType:false
                });
          });
          
    });      
                
            </script>
            
    </body>
</html>
 