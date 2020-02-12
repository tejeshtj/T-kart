<%@page import="java.awt.Window"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">


	
	function logout(){
		debugger;
	 jQuery.ajax({url: "/Tkart/logout", success: function(result){
		location.replace("Home");
  }});
}
	function loadcart(){
	jQuery(".cart").click(function(){
		debugger;
		location.replace("Mycart");
	  });
	}
	
	
</script>
</head>
<body>
<f:view>

</f:view>
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tcartr</title>
    <link rel="icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="css/all.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!--::header part start::-->
    <header class="main_menu home_menu">
        <div class="container-fluid">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-11">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="Home"> <img src="img/tkart.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="menu_icon"><i class="fas fa-bars"></i></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link home-link" href="Home">Home</a>
                                </li>
                                <li class="nav-item">
                                <%if
                                                        
                                   (session.getAttribute("user")==null){%>
                                    <a class="nav-link login-link" href="Login">Login</a>
                                    <%}else{%>
                                     <a class="nav-link logout-link" href="#" onClick="logout()">Logout</a>
                                    <%} %>
                                </li>
                               
                              
                                <li class="nav-item">
                                    <a class="nav-link contact-link" href="contact.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="hearer_icon d-flex">
                            <div class="dropdown cart" style="padding-top:6%; padding-right:9%;">
                            <%if
                                   (session.getAttribute("user")!=null){%>
                                <a class="dropdown-toggle" href="cart.jsp" id="navbarDropdown3" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="loadcart()">
                                    <i class="ti-bag"></i>
                                </a>
                                <%} %>
                                <!-- <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <div class="single_product">
    
                                    </div>
                                </div> -->
                            </div>
               <div class="p-1 bg-light rounded rounded-pill shadow-sm mb-4">
            <div class="input-group">
              <input type="search" placeholder="searching for?" aria-describedby="button-addon1" class="form-control border-0 bg-light">
              <div class="input-group-append">
                <button id="button-addon1" type="submit" class="btn btn-link text-primary" onclick=loadSearch()><i class="fa fa-search"></i></button>
              </div>
            </div>
          </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
      <!--   <div class="search_input" id="search_input_box">
            <div class="container ">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div> -->
    </header>
    <!-- Header part end-->
 <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/mixitup.min.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- slick js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>
<script type="text/javascript">
function loadSearch(){
	debugger;
	var urlquery="products?query="
	location.replace(urlquery.concat(jQuery('.form-control').val()));
  };
</script>
</html>