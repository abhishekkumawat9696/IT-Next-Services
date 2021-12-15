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
        
        <style>
           
            
        </style>
    
    
    </head>
    <body>
    
   
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
      <li class="nav-item active">
          <a class="nav-link" href="AdminProfile.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="reg_users.jsp">REGISTERED USERS<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="ser_requests.jsp">SERVICE REQUESTS<span class="sr-only">(current)</span></a>
      </li>
    
      <li class="nav-item">
          <a class="nav-link" href="con_requests.jsp">CONTACT REQUESTS<span class="sr-only">(current)</span></a>
      </li>
    
     
     
       <li class="nav-item">
           <a class="nav-link" href="Employee_list.jsp">EMPLOYEE</a>
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
       <!--
      <li>
          <a href="#" data-toggle="modal" data-target="#search_bar">&nbsp;&nbsp;<i class="fa fa-search" aria-hidden="true"></i></a>
      </li>-->
       
    </ul>
     <!-- <button class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Payment</button>
       <a class="btn btn-outline-light btn-lg bc" href="#contact" style="border-radius: 50px;">Service Request</a> 
     -->
     </div>
 
</nav>
 
</div>
 
               
  <!-- end header top -->
 
      <!-- profile modal-->
      
<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-dark text-center">
        <h5 class="modal-title" id="exampleModalLabel">ItNext</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <h5 class="modal-title mt-2 mb-4" id="exampleModalLabel"> <%= user.getName()  %></h5>
              <!--details-->
              <div id="profile-details">
                    <table class="table">
                    <tbody>
                      <tr>
                        <th scope="row">ID</th>
                        <td><%= user.getId()%></td>
                        
                      </tr>
                      <tr>
                        <th scope="row">Email</th>
                        <td><%= user.getEmail()%></td>
                        
                      </tr>
                      <tr>
                        <th scope="row">Mobile</th>
                        <td><%= user.getPhone()%></td>
                        
                      </tr>
                      <tr>
                        <th scope="row">Gender</th>
                        <td><%= user.getGender()%></td>
                        
                      </tr>
                      <tr>
                        <th scope="row">Status</th>
                        <td><%= user.getAbout()%></td>
                        
                      </tr>
                    </tbody>
                  </table>
              </div>    
              <!-------------------------->
              
               <!--profile edit -->
              <div id="profile-edit" style="display:none;">
                  <h3 class="mt-2">Please Edit carefully</h3>
                  <form action="EditServlet" method="POST" enctype="multipart/form-data">
                      <table class="table">
                          <tr>
                              <td>Id</td>
                              <td><%= user.getId()%></td>
                          </tr>
                          <tr>
                              <td>Name</td>
                              <td><input type="text" class="form-control" name="user_name" value="<%= user.getName()%>" ></td>
                          </tr>
                          <tr>
                              <td>Mobile</td>
                              <td><input type="text" class="form-control" name="user_mobile" value="<%= user.getPhone()%>" ></td>
                          </tr>
                          <tr>
                              <td>Email</td>
                              <td><%= user.getEmail()%></td>
                          </tr>
                          
                          <tr>
                              <td>Password</td>
                              <td><%= user.getPassword()%></td>
                          </tr>
                          <tr>
                              <td>Gender</td>
                              <td><%= user.getGender().toUpperCase() %></td>
                          </tr>
                          <tr>
                              <td>About</td>
                              <td>
                                  <textarea class="form-control" name="user_about" rows="3"><%= user.getAbout() %>
                                  </textarea>
                              </td>
                          </tr>
                          
                          
                      </table>
                      <div class="container">
                          <button type="submit" class=" btm btn-outline-primary">Save</button>           
                      </div>
                  </form>
              </div>
              
              <!-------------------------->
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button" type="button" class="btn bc">Edit</button>
      </div>
    </div>
  </div>
</div>
      
      <!-- End of profile modal-->
      
  
  
 
  <%
        Message m=(Message)session.getAttribute("msg");
        if(m!=null)
        {
          %>
                                  
           <div class="alert <%= m.getCssClass() %>" role="alert">
               <%= m.getContent() %>
           </div>
                                  
          <%
             session.removeAttribute("msg");
        }
   %>
 

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
  

      
<div class="container" style="margin-top:200px;">
     <div class="container text-center my-5" style="font-size:50px; color: black;">ADMIN CONTROLLER
        
    </div>
           <div class="row my-4">
               <div class="col-md-3">
                    <div class="card" style=>
                        <div class="card-body">
                            <a href="reg_users.jsp">  <img src="img/user2.png" style="width:100%; height:250px; border: none;" class="img-thumbnail mt-2" style="" alt="Responsive image">
                                <div class="text-center">
                                <button type="submit" class=" btm btn-lg btn-outline-primary">Valid User List</button></a>
                                </div>
                        </div>
                    </div>
               </div>
               <div class="col-md-3">
                    <div class="card" style=>
                        <div class="card-body center">
                          <a href="ser_requests.jsp">    <img src="img/crs.jpg" style="width:100%; height:250px;border: none;" class="img-thumbnail mt-2" style="" alt="Responsive image">
                              <div class="text-center">
                              <button type="submit" class=" btm btn-lg btn-outline-primary">Customer Request List</button></a>
                              </div>
                        </div>
                    </div>
               </div>
               <div class="col-md-3">
                    <div class="card" style=>
                        <div class="card-body">
                            <a href="con_requests.jsp">  <img src="img/conRe.png" style="width:100%; height:250px; border: none;" class="img-thumbnail mt-2" style="" alt="Responsive image">
                                <div class="text-center">
                                <button type="submit" class=" btm btn-lg btn-outline-primary">Contect Request List</button></a>
                                </div>
                        </div>
                    </div>
               </div>
               <div class="col-md-3">
                    <div class="card" style=>
                        <div class="card-body">
                            <a href="Employee_list.jsp">  <img src="img/cm.jpg" style="width:100%; height:250px; border: none;" class="img-thumbnail mt-2" style="" alt="Responsive image">
                                <div class="text-center">
                                <button type="submit" class=" btm btn-lg btn-outline-primary">Employee List</button></a>
                                </div>
                        </div>
                    </div>
               </div>
              

           </div>
  
       </div>




















<!-- footer-->
<!-- footer -->
<footer class="section footer_style_2">
  <div class="container fluid">
    <!--<div class="row">
      <div class="map_section">
          <div id="map">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.049544028508!2d75.74195416488364!3d26.933643783118548!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db36c61c2d477%3A0x33b2b7d3f071b21e!2sKhirni%20Phatak%2C%20Khatipura%2C%20Jaipur%2C%20Rajasthan%20302012!5e0!3m2!1sen!2sin!4v1612582875036!5m2!1sen!2sin"
                      width="600" height="450" frameborder="0"
                      style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </div>
      </div>-->
      <div class="footer_blog">
        <div class="row">
          <div class="col-md-4">
            <div class="main-heading left_text">
              <h2>It Next Theme</h2>
            </div>
            <p>Tincidunt elit magnis nulla facilisis. Dolor sagittis maecenas. Sapien nunc amet ultrices, dolores sit ipsum velit purus aliquet, massa fringilla leo orci.</p>
            <ul class="social_icons">
              <li class="social-icon fb"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li class="social-icon tw"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li class="social-icon gp"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="col-md-4">
            <div class="main-heading left_text">
              <h2>Additional links</h2>
            </div>
            <ul class="footer-menu">
              <li><a href="it_about.html"><i class="fa fa-angle-right"></i> About us</a></li>
              <li><a href="it_term_condition.html"><i class="fa fa-angle-right"></i> Terms and conditions</a></li>
              <li><a href="it_privacy_policy.html"><i class="fa fa-angle-right"></i> Privacy policy</a></li>
              <li><a href="it_news.html"><i class="fa fa-angle-right"></i> News</a></li>
              <li><a href="it_contact.html"><i class="fa fa-angle-right"></i> Contact us</a></li>
            </ul>
          </div>
          <div class="col-md-4">
            <div class="main-heading left_text">
              <h2>Services</h2>
            </div>
            <ul class="footer-menu">
              <li><a href="it_data_recovery.html"><i class="fa fa-angle-right"></i> Data recovery</a></li>
              <li><a href="it_computer_repair.html"><i class="fa fa-angle-right"></i> Computer repair</a></li>
              <li><a href="it_mobile_service.html"><i class="fa fa-angle-right"></i> Mobile service</a></li>
              <li><a href="it_network_solution.html"><i class="fa fa-angle-right"></i> Network solutions</a></li>
              <li><a href="it_techn_support.html"><i class="fa fa-angle-right"></i> Technical support</a></li>
            </ul>
          </div>
         <div class="col-md-4">
            <div class="main-heading left_text">
              <h2>Contact us</h2>
            </div>
            <p>4 Khirni Phatak, Jhotwara<br>
              Jaipur, Rajasthan, India<br>
              <span style="font-size:18px;"><a href="tel:+9876543210">+91 9828132618</a></span></p>
            <div class="footer_mail-section">
              <form>
                <fieldset>
                <div class="field">
                  <input placeholder="Email" type="text">
                  <button class="button_custom bc"><i class="fa fa-envelope" aria-hidden="true"></i></button>
                </div>
                </fieldset>
              </form>
            </div>
          </div>
        </div>
                <div class="text-white text_align_center my-5">
                    <p class="text-white">ItNext © Copyrights 2021 Design by Abhishek kumawat</p>
              </div>
    </div>
  </div>
</footer>
<!-- end footer -->


end footer -->







        
        
        
        
        
         <!--java script-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
                integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="js/myJS.js" type="text/javascript"></script>
            <script src="http://use.fontawesome.com/releases/v5.0.8/js/all.js">
                </script>
            <script>
                
            </script>
            
            <script>
                $(document).ready(function(){
                    
                    let editStatus=false;
                    $('#edit-profile-button').click(function(){
                       
                       if(editStatus==false)
                       {
                            $("#profile-details").hide();
                            $("#profile-edit").show();
                            editStatus=true;
                            $(this).text("Back");
                       }
                       else
                       {
                           $("#profile-details").show();
                            $("#profile-edit").hide();
                            editStatus=false;
                            $(this).text("Edit");
                       }
                        
                    });
                  ///////////////////////////////////////////////////////////////
                  
                  
                  
                  
                  
                   
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