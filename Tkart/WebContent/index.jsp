<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>winter</title>
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
    <script type="text/javascript">
    function newArrival() {
    	
   	debugger;
   	jQuery(".arrival").click(function(){
		debugger;
		location.replace("NewArrivals");
	  });
         }
   
    
    </script>
</head>

<body>
<%@ include file = "Topnav.jsp" %>
    <!-- Header part end-->

    <!-- banner part start-->
  <%@ include file = "Trending.jsp" %>
    <!-- banner part start-->

    <!-- feature_part start-->
    <section class="feature_part pt-4">
        <div class="container-fluid p-lg-0 overflow-hidden">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_feature_post_text">
                        <img src="img/feature_1.png" alt="#">
                        <div class="hover_text gender" >
                            <a href="products?gender=M" class="btn_2"  >shop for Male</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_feature_post_text">
                        <img src="img/feature_2.png" alt="#">
                        <div class="hover_text gender">
                            <a href="products?gender=F" class="btn_2" >shop for Female</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_feature_post_text">
                        <img src="img/feature_3.png" alt="#">
                        <div class="hover_text">
                            <a href="single-product.jsp" class="btn_2">shop for Kids</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- upcoming_event part start-->

    <!-- new arrival part here -->
    <section class="new_arrival section_padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8">
                    <div class="arrival_tittle">
                        <h2>new arrival</h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="arrival_filter_item filters">
                        
                            <a class="controls arrival" href="#" onclick="newArrival()">Check latest Arrivals </a>
                            
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="new_arrival_iner filter-container">
                        <div class="single_arrivel_item weidth_1 mix shoes">
                            <img src="img/arrivel/arrivel_5.png" alt="#">
                            <div class="hover_text">
                                <p>Canvas</p>
                                <a href="NewArrivals"><h3>Lorem Canvas Low-Top Sneaker</h3></a>
                                
                                <h5>Rs.1550</h5>
                                
                            </div>
                        </div>
                        <div class="single_arrivel_item weidth_2 mix women">
                            <img src="img/arrivel/arrivel_2.png" alt="#">
                            <div class="hover_text">
                                <p>Canvas</p>
                                <a href="NewArrivals"><h3>Low-Top Sneaker</h3></a>
                                
                                <h5>Rs.2150</h5>
                                
                            </div>
                        </div>
                        <div class="single_arrivel_item weidth_3 mix shoes women" >
                            <img src="img/arrivel/arrivel_3.png" alt="#">
                            <div class="hover_text">
                                <p>Canvas</p>
                                <a href="NewArrivals"><h3>combo pack</h3></a>
                               
                                <h5>$150</h5>
                               
                            </div>
                        </div>
                        <div class="single_arrivel_item weidth_3 mix women men">
                            <img src="img/arrivel/arrivel_4.png" alt="#">
                            <div class="hover_text">
                                <p>LeeCooper</p>
                                <a href="NewArrivals"><h3>Sweat Shirt</h3></a>
                                
                                <h5>$150</h5>
                                
                            </div>
                        </div>
                        <div class="single_arrivel_item weidth_2 mix men women">
                            <img src="img/arrivel/arrivel_1.png" alt="#">
                            <div class="hover_text">
                                <p>Canvas</p>
                                <a href="NewArrivals"><h3>Lorem Canvas Low-Top Sneaker</h3></a>
                                
                                <h5>Rs.1250</h5>
                               
                            </div>
                        </div>
                        <div class="single_arrivel_item weidth_1 mix shoes men">
                            <img src="img/arrivel/arrivel_6.png" alt="#">
                            <div class="hover_text">
                                <p>Canvas</p>
                                <a href="NewArrivals"><h3>Lorem Canvas Low-Top Sneaker</h3></a>
                                
                                <h5>Rs.1500</h5>
                                
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </section>
    <!-- new arrival part end -->

    <!-- free shipping here -->
   <%@ include file = "footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
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

</html>