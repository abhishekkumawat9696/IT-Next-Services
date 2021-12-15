<%@page errorPage="error_page.jsp" %>

<%@page import="com.itnext.entities.Message"%>
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
         /*   .banner-background{
               clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 75% 94%, 38% 98%, 0 95%, 0 0);
            }*/
            
            
        </style>
        
        
    </head>
    <body>
       <!-- navbar-->
       <%@include file="navbar.jsp" %>
        
        <main class="d-flex align-items-center bc banner-background" style="padding-bottom:70px; padding-top: 170px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header bc text-white text-center">
                                <span class="fa fa-user-circle-o fa-3x"></span>
                                <br>
                                <p class="text-white">LogIn hear</p>
                            </div>
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
                            
                            <div class="card-body">
                                <form action="LoginServlet" method="POST">
                                    <div class="form-group">
                                      
                                      <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email Id">
                                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                     
                                      <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="container text-center">
                                        <button type="submit" class="btn bc" style="border-radius: 50px;">LogIn</button>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="card-footer text-center">
                                <a href="register_page.jsp" class="btn bc" style="border-radius: 50px;">Create Account</a>
 
                            </div>
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
