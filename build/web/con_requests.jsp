<%@page import="com.itnext.entities.Contact"%>
<%@page import="com.itnext.dao.ContactDao"%>
<%@page import="com.itnext.sendmail.ServiceConfirmation"%>
<%@page import="com.itnext.dao.ServiceRequestDao"%>
<%@page import="com.itnext.entities.ServiceRequest"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itnext.dao.UserDao"%>
<%@page import="com.itnext.helper.connectionProvider"%>
<%@page import="com.itnext.entities.Message"%>
<%@page import="com.itnext.entities.User"%>
<%@page errorPage="error_page.jsp" %>
<%
    
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
      <li class="nav-item">
          <a class="nav-link" href="AdminProfile.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="reg_users.jsp">REGISTERED USERS<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="ser_requests.jsp">SERVICE REQUESTS<span class="sr-only">(current)</span></a>
      </li>
    
      <li class="nav-item active">
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
                        <a class="dropdown-item" href="#AdminProfile.jsp"><%= user.getName().toUpperCase()  %></a>
                        <a class="dropdown-item" href="register_page.jsp">SIGN UP</a>
                        <a class="dropdown-item" href="login_page.jsp">LOG IN</a>
                        <a class="dropdown-item" href="LogoutServlet">LOGOUT</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">OTHER ACCOUNT</a>
                    </div>
         </li>
       
     <!-- <li>
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
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h3>Contact Requests</h3>
            <p class="large">Contact Request Send by Customers and Normal Users</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">        
<table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">CID</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Message</th>
                <th scope="col">Operation</th>
               
            </tr>
            </thead>
          
             <%
                         
                          ContactDao use=new ContactDao(connectionProvider.getConnection());
                           ArrayList<Contact> list=use.getAllContact();
                          for(Contact c:list)
                          {
                          %>
                         
                          <tbody>
                          <tr id="data">
                             <td scope="row"><%= c.getCId()%></td>
                             <td class="name"><%= c.getName()%></td>
                             <td><%= c.getEmail()%></td>
                              <td><%= c.getPhone()%></td>
                              <td><%= c.getMessage()%></td>
                              <td><a class="btn btn-outline-light btn-md bc" data-toggle="modal" data-target="#exampleModal" href="#contact" style="border-radius: 50px;">Reply</a>
                              <a class="btn btn-outline-light btn-md" data-toggle="modal" data-target="#deleteModal" href="#" style="background: red;border-radius: 50px;">Delete</a>
                               </td>
                          </tr>
                          </tbody> 
                        
            
       

    </div>
</div>

      
                    


<!-----Reply Model------->


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header ">
        <h5 class="modal-title text-center" id="exampleModalLabel">Reply To</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form id="reply" class="table-form" name="table-form" method="POST" action="ContactReplyServlet">
          <div class="form-group">
              <input type="text" name="nameTo" class="form-control" id="recipient-name" value="" required>
          </div>
          
          <div class="form-group">
              
              <input type="email" name="emailTo" class="form-control" value="" id="recipient-email" placeholder="To" required>
          </div>
          
         
          <div class="form-group">
            <textarea class="form-control" name="reply" id="message-text" placeholder="Reply"></textarea>
          </div>
          <div class="form-group">
        <button type="submit" class=" btm btn-outline-primary">Reply</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <!--<button type="submit" class="btn bc text-white">Table Request</button>-->
      </div>
    </div>
  </div>
</div>

<!-------------------------------------->
<!-------------------------------------->

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header ">
        <h5 class="modal-title text-center" id="exampleModalLabel">Delete To</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form id="delete" class="table-form" name="table-form" method="POST" action="ContactDeleteServlet">
          <div class="form-group">
              <input type="text" name="cid" class="form-control text-center" id="recipient-id1" style="border: none; font-size: 20px;" value="" required>
          </div>
          <div class="form-group">
              <input type="text" name="name" class="form-control" id="recipient-name1" value="" required>
          </div>
          <div class="form-group">
              <input type="email" name="email" class="form-control" id="recipient-email1" value="" required>
          </div>
          
          <div class="form-group">
              
              <input type="text" name="phone" class="form-control" value="" id="recipient-phone1" required>
          </div>
          
         
          <div class="form-group">
            <textarea class="form-control" name="msg" id="recipient-msg1"></textarea>
          </div>
          <div class="form-group">
        <button type="submit" class=" btm btn-lg btn-outline-primary">Delete</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <!--<button type="submit" class="btn bc text-white">Table Request</button>-->
      </div>
    </div>
  </div>
</div>

<!-------------------------------------->
<!-------------------------------------->

   
                        <%
                            }
                          %>
    </table>
<!---------End Table book modal------------>















<!-- footer

end footer -->







        
        
        
        
        
         <!--java script-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"
                integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            
            <script src="http://use.fontawesome.com/releases/v5.0.8/js/all.js">
                </script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
                
            </script>
              
            <script>
                $('.table tbody').on('click','.btn',function(){
                    var currow=$(this).closest('tr');
                    var col1=currow.find('td:eq(0)').text();
                    var col2=currow.find('td:eq(1)').text();
                    var col3=currow.find('td:eq(2)').text();
                    var col4=currow.find('td:eq(3)').text();
                    var result=col1+'\n'+col2+'\n'+col3+'\n'+col4+'\n';
                    document.getElementById("recipient-name").value=col2;
                    document.getElementById("recipient-email").value=col3;
                    //alert(result);
                });
            </script>
            <script>
                $('.table tbody').on('click','.btn',function(){
                    var currow=$(this).closest('tr');
                    var col1=currow.find('td:eq(0)').text();
                    var col2=currow.find('td:eq(1)').text();
                    var col3=currow.find('td:eq(2)').text();
                    var col4=currow.find('td:eq(3)').text();
                    var col5=currow.find('td:eq(4)').text();
                    var result=col1+'\n'+col2+'\n'+col3+'\n'+col4+'\n'+col5+'\n';
                    document.getElementById("recipient-id1").value=col1;
                    document.getElementById("recipient-name1").value=col2;
                    document.getElementById("recipient-email1").value=col3;
                    document.getElementById("recipient-phone1").value=col4;
                    document.getElementById("recipient-msg1").value=col5;
                    //alert(result);
                });
            </script>
            
            <script>
             
                $(document).ready(function(){
                    
                    $("#reply").on("submit",function(event){
                  
                  // this code gets called when form is submitted
                  event.preventDefault();
                  console.log("you have clicked on submit");
                  let form =new FormData(this);
                  
                  //now requesting to server
                  $.ajax({
                      url:"ContactReplyServlet",  
                      data:form,
                      type:'POST',
                      success: function(data,textStatus,jqXHR){
                          console.log(data);
                          if(data.trim() === "done")
                          {
                              swal("send");

                          }
                          else
                          {
                               swal("Send ");
                          }
                      },
                      error: function (jqXHR, textStatus, errorThrown) {
                          swal("Error!", "Something went wrong please try again !", "error");
                        
                    },
                    processData: false,
                    contentType: false
                  });
                  
                  
              });
                     
            
                //////////////////////////////////
               
        
        // contact details delete data
                $("#delete").on('submit',function(event){
                  
                  // this code gets called when form is submitted
                  event.preventDefault();
                  console.log("you have clicked on submit");
                  let form =new FormData(this);
                  
                  //now requesting to server
                  $.ajax({
                      url:"ContactDeleteServlet",  
                      data:form,
                      type:'POST',
                      success: function(data,textStatus,jqXHR){
                          console.log(data);
                          if(data.trim() === "done")
                          {
                                swal("Error!", "Something went wrong please try again !", "error");


                          }
                          else
                          {
                              
                               swal("Success!", "Employee data is deleted Successfully !", "success");
                          }
                      },
                      error: function (jqXHR, textStatus, errorThrown) {
                          swal("Error!", "Something went wrong please try again !", "error");
                        
                    },
                    processData: false,
                    contentType: false
                  });
                  
                  
              });
                    
               
        
        
                });
                
                
                
             </script>
            
        
            
    </body>
</html>