<!doctype html>
<html lang="zxx">
<%@ page import="service.Impl,java.util.List,dao.Product" %>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>aranaz</title>
  <link rel="icon" href="img/favicon.png">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- animate CSS -->
  <link rel="stylesheet" href="css/animate.css">
  <!-- owl carousel CSS -->
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <!-- nice select CSS -->
  <link rel="stylesheet" href="css/nice-select.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="css/all.css">
  <!-- flaticon CSS -->
  <link rel="stylesheet" href="css/flaticon.css">
  <link rel="stylesheet" href="css/themify-icons.css">
  <!-- font awesome CSS -->
  <link rel="stylesheet" href="css/magnific-popup.css">
  <!-- swiper CSS -->
  <link rel="stylesheet" href="css/slick.css">
  <link rel="stylesheet" href="css/price_rangs.css">
  <!-- style CSS -->
  <link rel="stylesheet" href="css/style.css">
</head>
<%
String email=(String)session.getAttribute("user");
List<Product> productList= Impl.cart(email);
%>
<body class="bg-white">
  <!--::header part start::-->
  <%@ include file = "Topnav.jsp" %>

  <!-- breadcrumb start-->
  <section class="breadcrumb breadcrumb_bg">
      <div class="container">
          <div class="row justify-content-center">
              <div class="col-lg-12">
                  <div class="breadcrumb_iner">
                      <div class="breadcrumb_iner_item">
                          <p>Home/Shop/Single product/Cart list</p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- breadcrumb start-->

  <!--================Cart Area =================-->
  <section class="cart_area section_padding">
    <div class="container">
      <div class="cart_inner">
        <div class="table-responsive">
        
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Product</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
              </tr>
            </thead>
            <%  for(Product product: productList) {  
        //String	href="single-product.jsp?productId="+product.getProductId();
        %>
            <tbody>
              <tr>
                <td>
                  <div class="media">
                    <div class="d-flex">
                      <img src=<%=product.getImage() %> alt="" />
                    </div>
                    <div class="media-body">
                      <p><%=product.getProductName() %></p>
                    </div>
                  </div>
                </td>
                <td>
                  <h5>Rs.<%=product.getPrice() %></h5>
                </td>
                <td>
                  <div class="product_count">
                    <!-- <input type="text" value="1" min="0" max="10" title="Quantity:"
                      class="input-text qty input-number" />
                    <button
                      class="increase input-number-increment items-count" type="button">
                      <i class="ti-angle-up"></i>
                    </button>
                    <button
                      class="reduced input-number-decrement items-count" type="button">
                      <i class="ti-angle-down"></i>
                    </button> -->
                    <span class="input-number-decrement"> <i class="ti-minus"></i></span>
                    <input class="input-number" type="text" value="1" min="1" max="10">
                    <span class="input-number-increment"> <i class="ti-plus"></i></span>
                  </div>
                </td>
                <td>
                  <h5 class="sum">Rs.<%=product.getPrice() %></h5>
                </td>
              </tr>
             <%} %>
             
              <tr>
                <td></td>
                <td></td>
                <td>
                  <h5>Subtotal</h5>
                </td>
                <td>
                  <h5>$2160.00</h5>
                </td>
              </tr>
              <tr class="shipping_area">
                <td></td>
                <td></td>
                <td>
                  <h5>Shipping</h5>
                </td>
                <td>
                  <div class="shipping_box">
                    <ul class="list">
                      <li>
                        Flat Rate: $5.00
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                      <li>
                        Free Shipping
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                      <li>
                        Flat Rate: $10.00
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                      <li class="active">
                        Local Delivery: $2.00
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                    </ul>
                    <h6>
                      Calculate Shipping
                      <i class="fa fa-caret-down" aria-hidden="true"></i>
                    </h6>
                    <select class="shipping_select">
                      <option value="1">Bangladesh</option>
                      <option value="2">India</option>
                      <option value="4">Pakistan</option>
                    </select>
                    <select class="shipping_select section_bg">
                      <option value="1">Select a State</option>
                      <option value="2">Select a State</option>
                      <option value="4">Select a State</option>
                    </select>
                    <input class="post_code" type="text" placeholder="Postcode/Zipcode" />
                    <a class="btn_1" href="#">Update Details</a>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>
          <div class="checkout_btn_inner float-right">
            <a class="btn_1" href="#">Continue Shopping</a>
            <a class="btn_1 checkout_btn_1" href="#">Proceed to checkout</a>
          </div>
        </div>
      </div>
  </section>
  <!--================End Cart Area =================-->

  <!--::footer_part start::-->
  <footer class="footer_part">
      <div class="container">
          <div class="row justify-content-between">
              <div class="col-sm-6 col-lg-2">
                  <div class="single_footer_part">
                      <h4>Category</h4>
                      <ul class="list-unstyled">
                          <li><a href="#">Male</a></li>
                          <li><a href="#">Female</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">Fashion</a></li>
                      </ul>
                  </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                  <div class="single_footer_part">
                      <h4>Company</h4>
                      <ul class="list-unstyled">
                          <li><a href="">About</a></li>
                          <li><a href="">News</a></li>
                          <li><a href="">FAQ</a></li>
                          <li><a href="">Contact</a></li>
                      </ul>
                  </div>
              </div>
              <div class="col-sm-6 col-lg-3">
                  <div class="single_footer_part">
                      <h4>Address</h4>
                      <ul class="list-unstyled">
                          <li><a href="#">200, Green block, NewYork</a></li>
                          <li><a href="#">+10 456 267 1678</a></li>
                          <li><span>contact89@winter.com</span></li>
                      </ul>
                  </div>
              </div>
              <div class="col-sm-6 col-lg-4">
                  <div class="single_footer_part">
                      <h4>Newsletter</h4>
                      <div id="mc_embed_signup">
                          <form target="_blank"
                              action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                              method="get" class="subscribe_form relative mail_part">
                              <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address"
                                  class="placeholder hide-on-focus" onfocus="this.placeholder = ''"
                                  onblur="this.placeholder = ' Email Address '">
                              <button type="submit" name="submit" id="newsletter-submit"
                                  class="email_icon newsletter-submit button-contactForm">subscribe</button>
                              <div class="mt-10 info"></div>
                          </form>
                      </div>
                      <div class="social_icon">
                          <a href="#"><i class="ti-facebook"></i></a>
                          <a href="#"><i class="ti-twitter-alt"></i></a>
                          <a href="#"><i class="ti-instagram"></i></a>
                      </div>
                  </div>
              </div>
          </div>
          <div class="row justify-content-center">
              <div class="col-lg-12">
                  <div class="copyright_text">
                      <P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
                  </div>
              </div>
          </div>
      </div>
  </footer>
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
  <script src="js/price_rangs.js"></script>
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