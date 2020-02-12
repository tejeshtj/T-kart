package utils;

public class TkartConstants {

	public final static String NewArivals="select * from products order by DateOfRelease desc;";
	public final static String loginQuery="select * from users where email=? and password=?;";
	public final static String productDetail="select * from products where productId=?;";
	public final static String cartItems="select * from products where productId in (select productId from cart where email=? );";
	public final static String addToCart="insert into cart values(?,?);";
	public final static String searchQuery="select  *  from products where  category  like %?% or productName like %?%;";
	public final static String productSpecification="select * from productdetail where productId=?;";
	public final static String shopByGender="select * from products where gender=?;";
	public final static String reviews="select * from reviews where productId=?;";
}
