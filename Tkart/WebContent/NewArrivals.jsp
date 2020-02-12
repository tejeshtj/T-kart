<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="service.Impl,java.util.List,dao.Product" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function(){
function detectReload(){
	debugger;
	if(performance.navigation.type == 1){
		jQuery("container-fluid").empty();
		jQuery("container-fluid").add();
	}
}

});
</script>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tcart</title>
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
</head>
<body>
<%@ include file = "Topnav.jsp" %>
<%

List<Product> productList= Impl.newArrivalGetter();
%>
<section class="new_arrival section_padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8">
                    <div class="arrival_tittle">
                        <h2>new arrival</h2>
                    </div>
                </div>
              
            </div>
        </div>
       
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="new_arrival_iner filter-container" style="margin-left: 16%; margin-right: 2%;">
                        <%
        for(Product product: productList) {  
        String	href="productDetail?productId="+product.getProductId();
        %>
                        <div class="single_arrivel_item weidth_2 mix women" id=<%=product.getProductId() %>>
                            <img src=<%=product.getImage() %> alt="#">
                            <div class="hover_text">
                                <p><%=product.getCategory() %></p>
                                <a href=<%=href%>>
                                 <h3><%=product.getProductName() %></h3></a>
                             <h5><%=product.getPrice() %></h5>     
                            </div>
                        </div>
                      <%
                      }
                       %>
                
                     
                    </div>
                </div> 
            </div>
        </div>
        
        
    </section>
    <%@ include file = "footer.jsp" %>
</body>
</html>