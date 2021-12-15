<%@page import="com.itnext.entities.ProductDetail"%>
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
    
ProductDetail pd= new ProductDetail();
    

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
          <a class="nav-link" href="profile.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="loginAbout.jsp">ABOUTUS <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="loginServices.jsp">SERVICE<span class="sr-only">(current)</span></a>
      </li>
    
      <li class="nav-item active">
          <a class="nav-link" href="loginProduct.jsp">BUY PRODUCT<span class="sr-only">(current)</span></a>
      </li>
    
     
     
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
      <button class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Payment</button>
       <a class="btn btn-outline-light btn-lg bc" href="#contact" style="border-radius: 50px;">Service Request</a>  </div>
 
</nav>
 
</div>
 
               
  <!-- end header top -->

   <!-- inner page banner -->
  <div class="section">
      <img src="img/inner_page_banner.jpg" alt="" style="width:100%; height: 400px">  
  </div>
<!-- end inner page banner -->
  
<!------Our product---------->   
<div class="section padding_layout_1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h2>Confirm Product</h2>
            <p class="large">We package the products with best services to make you a happy customer.</p>
          </div>
        </div>
      </div>
    </div>
      
      <div class="col-lg-7 col-md-10 col-11 mx-auto">
          <form id="main-request-form" class="request-form" name="request-form" method="POST" action="ServiceRequestServlet">
              <div class="form-row">
                 
                  <div class="form-group col-md-6">
                       <label>Name</label>
                      <input type="text" name="customer_name" class="form-control" value="<%= user.getName()  %>">
                  </div>
                  <div class="form-group col-md-6">
                       <label>Email</label>
                      <input type="email" name="customer_email" class="form-control" value="<%= user.getEmail()  %>">
                  </div> 
              </div>
              <div class="form-row">
                  <div class="form-group col-md-6">
                       <label>Phone</label>
                      <input type="text" name="customer_phone" class="form-control" value="<%= user.getPhone()  %>">
                  </div>
                  <div class="form-group col-md-6">
                       <label>City</label>
                      <input type="text" name="customer_city" class="form-control" placeholder="City">
                  </div> 
              </div>
              <div class="form-row">
                  <div class="form-group col-md-6">
                       <label>Product Name</label>
                      <input type="text" name="customer_phone" class="form-control" value="<%= pd.getpNAme()  %>">
                  </div>
                  <div class="form-group col-md-6">
                       <label>Product Id</label>
                      <input type="text" name="customer_city" class="form-control" value="<%= pd.getpId()  %>">
                  </div> 
              </div>
              <div class="form-row">
                  <div class="form-group col-md-6">
                       <label>Product Price</label>
                      <input type="text" name="customer_phone" class="form-control" value="<%= pd.getpPrice()  %>">
                  </div>
                  <div class="form-group col-md-6">
                       <label>Zip Code</label>
                      <input type="text" name="customer_city" class="form-control" placeholder="City">
                  </div> 
              </div>
  
              <div class="form-group">
                  <textarea name="customer_address" class="form-control" placeholder="Address" rows="3"></textarea>
              </div> 
            
              <div class="form-group text-center">
                  <button type="submit" class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Send Request</button>  
              </div> 
            
               
          </form>
      </div>
      
      
      
  </div>
 </div>
  
  
  
  
  
  
  
  
<!------Our product---------->   
        <!------Our product---------->   
    <div class="section padding_layout_1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center">
            <h2>Our Products</h2>
            <p class="large">We package the products with best services to make you a happy customer.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/ni.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Pen Drives</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
                <p><span class="old_price">$15.00</span>  <span class="new_price">$25.00</span><br>
                    <a onclick="productDeatil(1,'Pen Drive',25)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/ki.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Keyboard</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$24.99</span><span class="new_price"> $12.49</span><br>
                 <a onclick="productDeatil(2,'Keyboard',12.49)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/ml.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Charging Connector</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$24.99</span><span class="new_price"> $12.49</span><br>
                 <a onclick="productDeatil(1,'Charging Connector',12.50)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/sp.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Speaker</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$15.00</span>  <span class="new_price">$25.00</span><br>
                <a onclick="productDeatil(1,'Speaker',25)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/cb.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Mobile Charging Pins</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$15.00</span>  <span class="new_price">$25.00</span><br>
                <a onclick="productDeatil(1,'Mobile Charging Pins',25)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/mod.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Modem</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$24.99</span><span class="new_price"> $12.49</span><br>
                 <a onclick="productDeatil(1,'Modem',12.50)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/mb.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Hard Disk Drive</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$24.99</span><span class="new_price"> $12.49</span><br>
                <a onclick="productDeatil(1,'Hard Disk Drive',12.50)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/mou.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Wireless Mouse</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$15.00</span>  <span class="new_price">$25.00</span><br>
                 <a onclick="productDeatil(1,'Wireless Mouse',25)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/ni.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Pen Drive</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$15.00</span>  <span class="new_price">$25.00</span><br>
                <a onclick="productDeatil(1,'Pen Drive',25)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/ki.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Wireless Keyboard</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$24.99</span><span class="new_price"> $12.49</span><br>
               <a onclick="productDeatil(1,'Wireless Keyboard',12.50)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/mod.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Port</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$24.99</span><span class="new_price"> $12.49</span><br>
                <a onclick="productDeatil(1,'Port',12.49)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
        <div class="product_list">
          <div class="product_img"> <img class="img-responsive" src="img/sp.jpg" alt=""> </div>
          <div class="product_detail_btm">
            <div class="center">
              <h4><a href="it_shop_detail.html">Wireless Speaker</a></h4>
            </div>
            <div class="starratin text_align_center">
              <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
            </div>
            <div class="product_price">
              <p><span class="old_price">$15.00</span>  <span class="new_price">$25.00</span><br>
                <a onclick="productDeatil(1,'Wireless Speaker',25)" class="btn btn-outline-light btn-sm my-2 bc" style="border-radius: 50px;">Add To Cart</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->
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
            
            <script src="http://use.fontawesome.com/releases/v5.0.8/js/all.js">
                </script>
                
             <script src="js/myJS.js" type="text/javascript"></script>
            <script>
                function productDeatil(id,name,price)
                {
                    $.post("AddToCartServlet",{
               
                    
                }
            </script>
            
            <script>
                $(document).ready(function(){
                    
                  
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
