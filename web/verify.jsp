<%@page errorPage="error_page.jsp" %>
<%@page import="com.itnext.entities.User"%>
<%
    
    //login validation
    
    User user=(User)session.getAttribute("authCode");
    if(user==null)
    {
        response.sendRedirect("register_page.jsp");
    }

    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
          /*  .banner-background{
               clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 75% 94%, 38% 98%, 0 95%, 0 0);
            }*/
            
            
        </style>
        
        
        
        
        
    </head>
    <body>
        
         <!-- navbar-->
         <%@include file="navbar.jsp" %>
       
       <main class="bc banner-background" style="padding-bottom:70px; padding-top: 170px;">
           <div class="container">
               <div class="col-md-6 offset-md-3">
                   <div class="card">
                       <div class="card-header text-center bc">
                           <span class="fa fa-3x fa fa-user-plus"></span>
                           <br>
                           <p class="text-white">Register hear</p>
                       </div>
                       <div class="card-body text-dark">
                           <form id="regform"action="VerifyServlet" method="POST">
                               
                               <div class="form-group">
                                   <input type="text" name="user_name" class="form-control" id="user_name" aria-describedby="emailHelp" value="<%= user.getName()%>">
                                </div>
                               <div class="form-group">
                                  <input type="number" name="user_mobile" class="form-control" id="user_mobile" aria-describedby="emailHelp" value="<%= user.getPhone()%>">
                                </div>
                               
                                <div class="form-group">
                                  <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%= user.getEmail() %>">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                               
                               
                                <div class="form-group">
                                  <input type="password" name="user_password" class="form-control" id="exampleInputPassword1" value="<%= user.getPassword() %>">
                                </div>
                                <div class="form-group">
                                  <label for="gender">Gender</label>
                                  &nbsp;&nbsp;&nbsp;
                                  <input type="radio" id="gender"name="gender"value="Male">&nbsp;Male&nbsp;&nbsp;
                                  <input type="radio" id="gender" name="gender"value="Female">&nbsp;Female&nbsp;&nbsp;
                                  <input type="radio" id="gender" name="gender"value="Other">&nbsp;Other
                                </div>
                               <div class="form-group">
                                   <textarea name="about" class="form-control" id="" rows="3" value="<%= user.getAbout() %>"></textarea>
                                   
                               </div>
                                 <div class="form-group">
                                     <input type="text" name="verify_code" class="form-control" id="user_verify" aria-describedby="emailHelp" placeholder="Write 6 digits code">
                                  <small id="emailHelp" class="form-text text-muted">write your verification code for creating account.</small>
                                </div>
                               
                                <div class="form-check">
                                  <input type="checkbox"name="check" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">agree terms & conditions</label>
                                </div>
                               <br>
                               <div class="container text-center"id="loader" style="display:none;">
                                     <span class="fa fa-refresh fa-spin fa-3x"></span>
                                     <h4>Please wait...</h4>
                               </div>
                                <button type="submit" class="btn bc"id="submit-btn" style="border-radius: 50px;">Submit</button>
                           </form>
                       </div>
                       
                       
                   </div>
                   
                   
                   
               </div>
               
               
           </div>
           
           
           
       </main>
        
        
     
         
         
         
         
     
         
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
            <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
                
            </script>     
    <script>
      $(document).ready(function()
      {
          console.log("page is ready........");
          
          $("#regform").on('submit',function(event){
                event.preventDefault();
                
               // var f = $(this).serialize();
               
               let f= new FormData(this);
               
                //console.log(f);
                $("#loader").show();
                $("#submit-btn").hide();
                $.ajax({
                    url:"VerifyServlet",
                    data:f,
                    type:'POST',
                    success:function(data,textStatus,jqXHR){
                        console.log(data);
                        console.log("success.......");
                        
                        $("#loader").hide();
                        $("#submit-btn").show();
                        
                        
                        
                        if(data.trim() === 'done')
                        {
                            
                            swal("Registered successfully....We are going to redirect to login page.....")
                                .then((value) => {
                                 window.location="login_page.jsp";
                                });
                  
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
                        $("#loader").hide();
                        $("#submit-btn").show();
                        swal("Something went wrong.. try again...");
                                
                        
       
                    },
                    processData: false,
                    contentType:false
                });
          });
          
          
          ////////////////////////////////////////////////////
          
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
