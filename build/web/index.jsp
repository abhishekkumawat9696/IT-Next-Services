<%@page errorPage="error_page.jsp" %>
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
  
        <%@include file="navbar.jsp" %>
        
  <!-- end header top -->
  
  <!-- carasol -->
  <%@include file="carasol.jsp" %>
  <!-- end carasol -->
  
  
  
  <!-- Why Choose us -->
  <%@include file="whyUs.jsp" %>     
   
  <!----End of ehy choose us setion-->
  
  <!--Service process section -->
 <div class="section padding_layout_1"> 
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h2>Service Process</h2>
            <p class="large">Easy and effective way to get your device repaired.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
        
      <div class="col-md-8 center">
        <div class="row">
          <div class="col-md-4">
            <div class="full">
              <div class="service_blog_inner text_align_center">
                <div class="icon"><img src="img/fs.png" alt="#" /></div>
                <h4 class="service-heading">Fast service</h4>
                <p>Simply put, fast but not rushed customer service makes a client feel like 
                    they're dealing with a human being who truly cares about them.
                    </p>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="full">
              <div class="service_blog_inner text_align_center">
                <div class="icon"><img src="img/sp.png" alt="#" /></div>
                <h4 class="service-heading">Secure payments</h4>
                <p>Secure Payment Services is a safer,
                    faster, more secure way to pay online with, your payments sent directly to the prison.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="full">
              <div class="service_blog_inner text_align_center">
                <div class="icon"><img src="img/et.png" alt="#" /></div>
                <h4 class="service-heading">Expert team</h4>
                <p>Regardless of the sector they work in, IT expert team usually provide similar
                    services related to software, hardware, databases, Web resources, networks and ...
                    </p>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="full">
              <div class="service_blog_inner text_align_center">
                <div class="icon"><img src="img/as.png" alt="#" /></div>
                <h4 class="service-heading">Affordable services</h4>
                <p>Luckily, there are services that are designed for 
                    small business owners so that they can profitably grow without dramatically increasing overhead.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="full">
              <div class="service_blog_inner text_align_center">
                <div class="icon"><img src="img/9d.png" alt="#" /></div>
                <h4 class="service-heading">90 Days warranty</h4>
                <p> we will replace any parts that failed due to defects in the material or 
                    workmanship and perform any labor related to the original repair free of charge. </p>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="full">
              <div class="service_blog_inner text_align_center">
                <div class="icon"><img src="img/aw.png" alt="#" /></div>
                <h4 class="service-heading">Award winning</h4>
                <p>We provide Award winning program to appriciate our worker to do more good work and feel like job satisfation. .</p>
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
<!-- end Service section -->








     <!------Our product---------->   
     <%@include file="product.jsp" %>
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


<!-- section blog -->
<div class="section padding_layout_1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h2>Latest from Our Blog</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="full blog_colum">
          <div class="blog_feature_img"> <img src="img/ch.jpg" alt="#" /> </div>
          <div class="post_time">
            <p><i class="fa fa-clock"></i> April 16, 2018 ( In Maintenance )</p>
          </div>
          <div class="blog_feature_head">
            <h4>Why Your Computer Hates You</h4>
          </div>
          <div class="blog_feature_cont">
            <p>There are many reasons your computer might overheat, but the most common reason is dust buildup on the fans which can trap heat...</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="full blog_colum">
          <div class="blog_feature_img"> <img src="img/cr.jpg" alt="#" /> </div>
          <div class="post_time">
            <p><i class="fa fa-clock"></i> October 5, 2019 ( In Maintenance )</p>
          </div>
          <div class="blog_feature_head">
            <h4>Easy Tips To Computer Repair</h4>
          </div>
          <div class="blog_feature_cont">
            <p>clean temporary files and clean disk cleanup files
                try to stay away from dust 
                use commands for cleaning unwanted files
                windows+r =%temp% , then enter delete all files permanently  
                windows+r =temp  ,then enter delete all files permanently</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="full blog_colum">
          <div class="blog_feature_img"> <img src="img/cm.jpg" alt="#" /> </div>
          <div class="post_time">
            <p><i class="fa fa-clock"></i> January 22, 2020 ( In Maintenance )</p>
          </div>
          <div class="blog_feature_head">
            <h4>Laptop Maintenance 2020</h4>
          </div>
          <div class="blog_feature_cont">
            <p>PCs require continuous maintenance to ensure a great experience. Cleaning unwanted data, updating the software, keeping the system safe ...</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->



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