

<div class="section padding_layout_1" id="contact">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="main_heading text_align_center text-white">
              <h2 class="text-white"> Service Request </h2>
            <p class="large text-white">Fastest repair service with best price!</p>
          </div>
        </div>
      </div>
    </div>
     
      <div class="col-lg-7 col-md-10 col-11 mx-auto">
          <form id="main-request-form" class="request-form" name="request-form" method="POST" action="ServiceRequestServlet">
              <div class="form-row">
                  <div class="form-group col-md-6">
                      <input type="text" name="customer_name" class="form-control" placeholder="Name" required>
                  </div>
                  <div class="form-group col-md-6">
                      <input type="email" name="customer_email" class="form-control" placeholder="Email" required>
                  </div> 
              </div>
              <div class="form-row">
                  <div class="form-group col-md-6">
                      <input type="text" name="customer_phone" class="form-control" placeholder="Phone"required>
                  </div>
                  <div class="form-group col-md-6">
                      <input type="text" name="customer_city" class="form-control" placeholder="City"required>
                  </div> 
              </div>
              
              <div class="form-group">
                  <input type="text" name="customer_subject" class="form-control" placeholder="Subject"required>
              </div> 
            
              <div class="form-group">
                  <textarea name="about_service" class="form-control" placeholder="Something About Your Service Request" rows="3"required></textarea>
              </div> 
              <div class="form-group">
                  <textarea name="customer_address" class="form-control" placeholder="Address" rows="3"required></textarea>
              </div> 
            
              <div class="form-group text-center">
                  <button type="submit" class="btn btn-outline-light btn-lg bc" style="border-radius: 50px;">Send Request</button>  
              </div> 
            
               
          </form>
      </div>
      
      
  </div>
</div>






      
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
                
  </script>


