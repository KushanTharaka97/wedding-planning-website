<%-- 
    Document   : package
    Created on : Nov 8, 2019, 2:09:05 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Packages</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
          <header>
             <jsp:include page="header.jsp"/>
        </header> 
        <br><br>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
  <h1 class="display-4">Pricing</h1>
  <p class="lead">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.</p>
</div>

<div class="container">
  <div class="card-deck mb-3 text-center">
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">Normal Package</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">price<small class="text-muted">/ pending...</small></h1>
        <ul class="list-unstyled mt-3 mb-4">
          <li>Depend on dinning pattern</li>
          <li>Video Album is not included</li>
        
        </ul>
        <button type="button" class="btn btn-lg btn-block btn-primary">Contact Us</button>
      </div>
    </div>
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">Mid-High</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">Price <small class="text-muted">/ pending...</small></h1>
        <ul class="list-unstyled mt-3 mb-4">
          <li>Depend on the dinning style.</li>
   
        </ul>
        <button type="button" class="btn btn-lg btn-block btn-primary">Contact Us</button>
      </div>
    </div>
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">High/Luxury</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">Price <small class="text-muted">/ pending</small></h1>
        <ul class="list-unstyled mt-3 mb-4">
        <li>Depend on the dinning style.</li>
   
        </ul>
        <button type="button" class="btn btn-lg btn-block btn-primary">Contact us</button>
      </div>
    </div>
  </div>
        
    
    <footer>
                   <jsp:include page="footer.jsp" />
        </footer>    
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
    </body>
</html>
