<%-- 
    Document   : services
    Created on : Dec 21, 2018, 12:33:34 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Free responsive business website template</title>
      <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/icons.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css"> 
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="css/template-style.css"> 
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
   </head>
   <body class="size-1140">
     
       <jsp:include page="header.jsp"/>
       
   
      
       
       
        </div>
         <div id="content">
            <div class="line">
               <div class="margin">
                   
                  
                  <div class="s-12 m-6 l-4">
                       <a href="service/phto.jsp">
                     <div class="content-block margin-bottom">
                        <img src="img/services/photo.jpg">
                        <h3>Photography</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                     </div>
                             </a>
                  </div>
                  
                   
              
                  <div class="s-12 m-6 l-4">
                           <a href="service/cakes.jsp">
                     <div class="content-block margin-bottom">
                        <img src="img/services/cakes.jpg">
                        <h3>WeddingCakes</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                     </div>
                                 </a>
                  </div>
                     
                   
                
                  <div class="s-12 m-6 l-4">
                         <a href="service/cars.jsp">
                     <div class="content-block margin-bottom">
                        <img src="img/services/cars.jpg">
                        <h3>LuxuryCars</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                     </div>
                             </a>
                  </div>
                   
                   
                  <div class="s-12 m-6 l-4">
                     <div class="content-block margin-bottom">
                        <img src="img/services/rings.jpg">
                        <h3>Jewellery</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                        </p>
                     </div>
                  </div>
                  <div class="s-12 m-6 l-4">
                     <div class="content-block margin-bottom">
                        <img src="img/services/foods.jpg">
                        <h3>CateringServices</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
                        </p>
                     </div>
                  </div>
                  <div class="s-12 m-6 l-4">
                     <div class="content-block margin-bottom">
                        <img src="img/services/halls.jpg">
                        <h3>WeddingHalls / hotels</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                     </div>
                  </div>

                  <div class="s-12 m-6 l-4">
                     <div class="content-block margin-bottom">
                        <img src="img/services/cards.jpg">
                        <h3>Wedding card Designing & printing</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy ni
                        </p>
                     </div>
                  </div>
                  <div class="s-12 m-6 l-4">
                     <div class="content-block margin-bottom">
                        <img src="img/services/flowers.jpg">
                        <h3>Costuems</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                     </div>
                  </div>
                  <div class="s-12 m-6 l-4">
                     <div class="content-block margin-bottom">
                        <img src="img/services/makeup.jpg">
                        <h3>Beauty-Saloons</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>
                     </div>
                  </div>
                 
               </div>
            </div>
         </div>
        
        
             <jsp:include page="footer.jsp" />
             
      <script type="text/javascript" src="js/responsee.js"></script> 
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>   
      <script type="text/javascript">
         jQuery(document).ready(function($) {  
           var owl = $('#news-carousel');
           owl.owlCarousel({
              nav: true,
              dots: false,
              items: 1,
              loop: true,
              navText: ["&#xf007","&#xf006"],
              autoplay: true,
              autoplayTimeout: 4000
           });
         });   
          
      </script>  
          
   </body>
</html>