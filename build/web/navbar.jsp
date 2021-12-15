
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
          <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="about.jsp">ABOUTUS <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="services.jsp">SERVICE<span class="sr-only">(current)</span></a>
      </li>
     
     
     
       <li class="nav-item">
           <a class="nav-link" href="contact.jsp">CONTACT</a>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="login_page.jsp">LOGIN</a>
      </li>
       <li class="nav-item">
           <a class="nav-link" href="register_page.jsp"></span>SIGNUP</a>
      </li>
      <li>
          <a href="#" data-toggle="modal" data-target="#search_bar">&nbsp;&nbsp;<i class="fa fa-search" aria-hidden="true"></i></a>
      </li>
       
    </ul>
     <!-- <button class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Payment</button>
     --><a class="btn btn-outline-light btn-lg bc" href="login_page.jsp" style="border-radius: 50px;">Service Request</a>
  </div>
     
</nav>

</div>



<!-- Button trigger modal -->


<!-- Sign up Modal<a data-toggle="modal" data-target="#signupModal"></a>
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">ItNext</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <div class="card">
                       <div class="card-header text-center bc text-white">
                           <span class="fa fa-3x fa fa-user-plus"></span>
                           <br>
                           <p class="text-white">Register hear</p>
                       </div>
                       <div class="card-body">
                           <form id="regform"action="RegisterServlet" method="POST">
                               
                               <div class="form-group">
                                  <input type="text" name="user_name" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Name">
                                </div>
                               <div class="form-group">
                                  <input type="number" name="user_mobile" class="form-control" id="user_mobile" aria-describedby="emailHelp" placeholder="Phone">
                                </div>
                               
                                <div class="form-group">
                                  
                                  <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email Id">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                               
                               
                                <div class="form-group">
                                  
                                  <input type="password" name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                  <label for="gender">Gender</label>
                                  &nbsp;&nbsp;
                                  <input type="radio" id="gender"name="gender"value="Male">&nbsp;Male&nbsp;&nbsp;
                                  <input type="radio" id="gender" name="gender"value="Female">&nbsp;Female&nbsp;&nbsp;
                                  <input type="radio" id="gender" name="gender"value="other">&nbsp;Other
                                </div>
                               <div class="form-group">
                                   <textarea name="about" class="form-control" id="" rows="3" placeholder="Something about yourself"></textarea>
                                   
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
                                <button type="submit" style="border-radius: 50px;" class="btn bc"id="submit-btn">Submit</button>
                           </form>
                       </div>
                       
                       
                   </div>
          
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" style="border-radius: 50px;" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

<!--End of SignUp Modal-->



<!-- Log In Modal --<a data-toggle="modal" data-target="#loginModal"></a>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">ItNext</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <div class="card">
                            <div class="card-header bc text-white text-center">
                                <span class="fa fa-user-circle fa-3x"></span>
                                <br>
                                <p class="text-white">LogIn hear</p>
                            </div>
                           
                            
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
                                        <button type="button" class="btn bc" style="border-radius: 50px;">Create Account</button>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="card-footer">
                                
                            </div>
                        </div>
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="border-radius: 50px;">Close</button>
        
      </div>
    </div>
  </div>
</div>-->