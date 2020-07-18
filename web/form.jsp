<%-- 
    Document   : form
    Created on : Dec 21, 2018, 1:56:12 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login/Sign-up Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/forms.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/w3.css">
        <script>
           function Submit(){
                var p=sp.psw.value;
                var cp=sp.cpsw.value;
            //using else if
            if(p==cp)
                alert("Password and Confirmation are similer! Press submit")
            else
                alert("Mismatch , re-type the password!")
           
           }
           
           function check(){
               var i=user.psw.value;
               var j=user.cpsw.value;
               //using else if
               if(i==j)
                    alert("Password and Confirmation are similer! Press submit")
                else
                alert("Mismatch , re-type the password!")
            
           }
        </script>
<style>

.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}


</style>
    </head>
    <body background="img/mainPage/img4.jpg">
        
        
        <jsp:include page="header.jsp"/>
        <br><br><br><br><br>
        <table align="center">
            <tr></tr>
            <tr>
                <td>
            <labe>Click to Fill the sign-up form</labe>
                    <button class="collapsible"><strong>Sign-up</strong></button>
        <div class="content">
                <button class="collapsible" style="background-color: #4CAF50;">As a Service Provider</button>
                <div class="content">
                            <div>
                                <form action="spsignup" method="POST" name="sp">
                                    <label >The Name of Service Provider</label>
                                    <input type="text"  name="spname" placeholder="Your name.." required="required">

                                    <label >Business Name</label>
                                    <input type="text"  name="bname" placeholder="Business Name" required="required">
                                    
                                    <label >e-mail</label>
                                    <input type="text"  name="email" placeholder="email" required="required">

                                    <label >Select your Business Type</label>
                                    <br>
                                    <input type="radio" name="btype" value="Photography"> Photography <br>
                                    <input type="radio" name="btype" value="WeddingCakes"> WeddingCakes<br>
                                    <input type="radio" name="btype" value="LuxuryCars">LuxuryCars<br>
                                    <input type="radio" name="btype" value="Jewellery"> Jewellery<br>
                                    <input type="radio" name="btype" value="CateringServices"> CateringServices<br>
                                    <input type="radio" name="btype" value="WeddingHalls">WeddingHalls<br>
                                    <input type="radio" name="btype" value="WeddingCard"> WeddingCard<br>
                                    <input type="radio" name="btype" value="Costuems"> Costuems<br>
                                     <input type="radio" name="btype" value="Saloons"> Saloons<br>
                                    
                                     <label>Password</label>
                                     <input type="password" name="psw" required="required">
                                     <label></label>
                                     <label>Confirm password</label>
                                     <input type="password" name="cpsw" onchange="Submit()">

                                     <input type="submit" value="Submit">
                                </form>
                             </div>
                </div>

                <br>


                                    <button class="collapsible">As a User</button>
                                    <form action="usersign" method="POST" name="user">
                                        <label>Name</label><br>
                                        <input type="text" name="uname" required="required"><br>
                                        <label>e-mail</label><br>
                                        <input type="text" name="email" required="required"><br>
                                        
                                        <label>Password</label>
                                     <input type="password" name="psw">
                                     <label></label>
                                     <label>Confirm password</label>
                                     <input type="password" name="cpsw" onchange="check()">
                                     <input type="submit" value="Submit" >
                                    </form>
                                    <div class="content">

                 </div>
        </div>
                  
                </td>
        
                <td>
                 
                    <label>Click to Login! </label>
        <button class="collapsible">Log-in</button>
        <div class="content">
          <!--the sign-in informations-->
         
  <form action="login1" method="POST">
    <label for="fname">email</label>
    <input type="text"  name="email" placeholder="Your registered email...">
    <br><br>
    <label >Password</label><br>
    <input type="password"  name="psw" placeholder="Your account password...">

    <input type="submit" value="Submit">
  </form>
</div>
        </div>
                </td>
        </tr>
        </table>
            
  
                           <div class="w3-content w3-section" style="max-width:500px">
                               <p align="center">Give your hands to us : <strong>We will make your dreams become true...</strong>  </p>

                          <img class="mySlides w3-animate-fading" src="img/mainPage/img4.jpg" style="width:100%">
                          <img class="mySlides w3-animate-fading" src="img/mainPage/img5.jpg" style="width:100%">
                          <img class="mySlides w3-animate-fading" src="img/mainPage/img7.jpg" style="width:100%">
                          <img class="mySlides w3-animate-fading" src="img/mainPage/img6.jpg" style="width:100%">
                          <img class="mySlides w3-animate-fading" src="img/mainPage/img8.jpg" style="width:100%">
                        </div>
        
        

     
        <script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}





                                                        var myIndex = 0;
                                                        carousel();

                                                        function carousel() {
                                                          var i;
                                                          var x = document.getElementsByClassName("mySlides");
                                                          for (i = 0; i < x.length; i++) {
                                                            x[i].style.display = "none";  
                                                          }
                                                          myIndex++;
                                                          if (myIndex > x.length) {myIndex = 1}    
                                                          x[myIndex-1].style.display = "block";  
                                                          setTimeout(carousel, 5000);    
                                                        }
</script>
    </body>
</html>
