<%@page import="com.itnext.entities.Message"%>
<%@page import="com.itnext.entities.User"%>
<%@page errorPage="error_page.jsp" %>
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
      <li class="nav-item  active">
          <a class="nav-link" href="loginAbout.jsp">ABOUTUS <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="loginServices.jsp">SERVICES<span class="sr-only">(current)</span></a>
      </li>
    
       <!--<li class="nav-item">
          <a class="nav-link" href="loginProduct.jsp">BUY PRODUCT<span class="sr-only">(current)</span></a>
      </li>-->
     
     
       <li class="nav-item">
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
        
   <!-- inner page banner -->
  <div class="section">
      <img src="img/inner_page_banner.jpg" alt="" style="width:100%; height: 400px">  
  </div>
<!-- end inner page banner -->

<!-- section -->
<div class="section padding_layout_1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h2>We are Leading Company</h2>
            <p class="large">Fastest repair service with best price!</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row about_blog">
      <div class="col-lg-6 col-md-6 col-sm-12 about_cont_blog">
        <div class="full text_align_left">
          <h3>What we do</h3>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
            standard dummy text ever since the 1500s, when an unknown printer took a galley..</p>
          <ul>
            <li><i class="fa fa-check-circle"></i>Persius appetere pro mea harum ridens</li>
            <li><i class="fa fa-check-circle"></i>Instructior vis at causae legimus luptatum mel</li>
            <li><i class="fa fa-check-circle"></i>Maluisset id persius appetere pro mea harum</li>
          </ul>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 about_feature_img padding_right_0">
          <div class="full text_align_center"> <img class="img-responsive" src="img/cm.jpg" alt="#" /> </div>
      </div>
    </div>      
      <div class="row" style="margin-top: 35px">
      <div class="col-md-8">
        <div class="full margin_bottom_30">
          <div class="accordion border_circle">
            <div class="bs-example">
              <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <p class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><i class="fa fa-hdd" aria-hidden="true"></i> Complete Recovery from Local & External Drive<i class="fa fa-angle-down"></i></a> </p>
                  </div>
                  <div id="collapseOne" class="panel-collapse collapse in">
                    <div class="panel-body">
                      <p>The data is most often salvaged from storage media such as internal or external hard disk drives (HDDs),
                          solid-state drives (SSDs), USB flash drives, magnetic tapes, CDs, DVDs,
                          RAID subsystems, and other electronic devices.
                          Recovery may be required due to physical damage to the storage devices 
                          or logical damage to the file system that prevents it from being mounted by the host operating system (OS). </p>
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <p class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><i class="fa fa-video"></i> Recovery Photo, Image, Video and Audio<i class="fa fa-angle-down"></i></a> </p>
                  </div>
                  <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                      <p>Complete media recovery is process of restoring full database,
                          a tablespace or a datafile from backup based upon media failure and applying the redo log files
                          to the most current time without loosing any data.
                          Type of Complete Media Recovery: Closed Database Recovery. Open Database Recovery. </p>
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <p class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><i class="fa fa-tablet"></i> Mobile Phone Recovery<i class="fa fa-angle-down"></i></a> </p>
                  </div>
                  <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">
                      <p>Smartphones hold data about every aspect of our lives from photos and videos 
                          to messages from an extensive contact list. When mobile phones fail due to either physical or 
                          logical damage, Secure Data Recovery can retrieve these important files. Our engineers have decades of
                          experience working on all makes and models of Smartphones, regardless of operating system.</p>
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <p class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><i class="fa fa-window-restore" aria-hidden="true"></i> Networking Devices Complete Solution With Configuration<i class="fa fa-angle-down left"></i></a> </p>
                  </div>
                  <div id="collapseFour" class="panel-collapse collapse in">
                    <div class="panel-body">
                      <p>Networking SolutionsThe Professional Solution for all your Secure Network/ Server Needs! Routers.
                          A router is a networking device that forwards data packets between computer networks. Switches.
                          Software defined networking. SAN switches. Copper / Fiber cabling. Network monitoring solutions.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="full" style="margin-top: 35px;">
          <h3>Need file recovery?</h3>
          <p>Data recovery always remains a top priority irrespective of equipment failure or
              damage. Thankfully, many cloud-based vendors offer cost effective solutions as
              compared to the traditional data recovery services which require regular upgrades,
              maintenance, and monitoring, and not to mention the cost of staffing required to manage it.</p>
          <p><a class="btn btn-outline-light btn-lg bc" href="#" style="border-radius: 50px; ">Read More</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->        
 

<!-- section -->
<div class="section padding_layout_1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h2>About Service</h2>
            <p class="large">Easy and effective way to get your device repaired.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-8">
        <div class="row">
          <div class="col-md-6">
            <div class="full">
              <div class="service_blog_inner2">
                <div class="icon text_align_left"><i class="fa fa-wrench"></i></div>
                <h4 class="service-heading">Honest Services</h4>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusa ntium dolore mque.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="full">
              <div class="service_blog_inner2">
                <div class="icon text_align_left"><i class="fa fa-cog"></i></div>
                <h4 class="service-heading">Secure payments</h4>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusa ntium dolore mque.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="full">
              <div class="service_blog_inner2">
                <div class="icon text_align_left"><i class="fa fa-history"></i></div>
                <h4 class="service-heading">Expert team</h4>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusa ntium dolore mque.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="full">
              <div class="service_blog_inner2">
                <div class="icon text_align_left"><i class="fa fa-heart"></i></div>
                <h4 class="service-heading">Affordable services</h4>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusa ntium dolore mque.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
        <div class="col-md-4 d-none d-md-block">
            <img src="img/c5.jpg" alt="#" class="rounded-circle"  style=" width: 530px; height: 500px;" />
        </div> 
        
    </div>
  </div>
</div>
<!-- end section -->
        
        

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
                
            </script>
       
            
       <script>
        
     $(document).ready(function()
      {
          console.log("page is ready........");
          
          $("#main-request-form").on('submit',function(event){
                event.preventDefault();
                
               // var f = $(this).serialize();
               
               let f= new FormData(this);
               
                //console.log(f);
               
                $.ajax({
                    url:"ServiceRequestServlet",
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