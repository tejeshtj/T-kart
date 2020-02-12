package service;

import java.io.FileReader;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.Product;
import dao.ProductSpec;
import utils.TkartConstants;


public class Impl {

	 static ArrayList<Product> productList = new ArrayList<Product>();
	static java.sql.Connection con=null;
	static PreparedStatement pstmt=null;
	static ResultSet rs=null;
	
	public static boolean  login(String email,String password) {
		
		try {
			
			java.sql.Driver ref=new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(ref);
			
			String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
			String filePath = "E:/db.properties";
			FileReader reader = new FileReader(filePath);
			Properties prop = new Properties();
			prop.load(reader);
			
			con = DriverManager.getConnection(dbUrl, prop);
			
			String sql=TkartConstants.loginQuery;
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,email);
			pstmt.setString(2, password);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) 
			
				return true;
			}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally
		{
			
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
 
		
	}
		
		return false;
	}
	public static List newArrivalGetter() {
		productList.clear();
		try {
			
			java.sql.Driver ref=new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(ref);
			
			String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
			String filePath = "E:/db.properties";
			FileReader reader = new FileReader(filePath);
			Properties prop = new Properties();
			prop.load(reader);
			
			con = DriverManager.getConnection(dbUrl, prop);
			
			String sql=TkartConstants.NewArivals;
			pstmt=con.prepareStatement(sql);
			
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				int productId = rs.getInt("productId");
				String category = rs.getString("category");
				String productName = rs.getString("productName");
				int price = rs.getInt("price");				
				String image=rs.getString("image"); 
				String availibility=rs.getString("availibility");
				productList.add(new Product(productId,category,productName,price,image,availibility));
			}
			
			/*
			 * for(Product product:productList) { System.out.println(product); }
			 */
			return productList;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally
		{
			
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
 
		
	}
		return null;
		
		
	}
	public static Product productDetail(int productId) {
				try {
			 Product product = null;
			java.sql.Driver ref=new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(ref);
			
			String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
			String filePath = "E:/db.properties";
			FileReader reader = new FileReader(filePath);
			Properties prop = new Properties();
			prop.load(reader);
			
			con = DriverManager.getConnection(dbUrl, prop);
			
			String sql=TkartConstants.productDetail;
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,productId);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				 productId = rs.getInt("productId");
				String category = rs.getString("category");
				String productName = rs.getString("productName");
				int price = rs.getInt("price");				
				String image=rs.getString("image"); 
				String availibility=rs.getString("availibility");
				 product=new Product(productId, category,productName, price, image, availibility);
				
			}
			return product ;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally
		{
			
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
 
		
	}
		return null;
		
		
	}
	
	public static List cart(String email) {
		
		try {
			 Product product = null;
			java.sql.Driver ref=new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(ref);
			 
			 productList.clear();
			
			String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
			String filePath = "E:/db.properties";
			FileReader reader = new FileReader(filePath);
			Properties prop = new Properties();
			prop.load(reader);
			
			con = DriverManager.getConnection(dbUrl, prop);
			
			String sql=TkartConstants.cartItems;
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,email);
			
			rs=pstmt.executeQuery();
			while(rs.next()){
				int productId = rs.getInt("productId");
				String category = rs.getString("category");
				String productName = rs.getString("productName");
				int price = rs.getInt("price");				
				String image=rs.getString("image"); 
				String availibility=rs.getString("availibility");
				productList.add(new Product(productId,category,productName,price,image,availibility));
				
			}
			return productList;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally
		{
			
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
 
		
	}
		return null;
		
		
	}
public static  int addToCart(String email,int productId) {
		
		try {
			 
			java.sql.Driver ref=new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(ref);
			
			 productList.clear();
			
			String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
			String filePath = "E:/db.properties";
			FileReader reader = new FileReader(filePath);
			Properties prop = new Properties();
			prop.load(reader);
			
			con = DriverManager.getConnection(dbUrl, prop);
			
			String sql=TkartConstants.addToCart;
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,email);
			pstmt.setInt(2,productId);
			System.out.println("adding to cart impl");
			int count=pstmt.executeUpdate();
			
			return count;
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally
		{
			
			
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
 
		
	}
		return 0;
		
		
		
	}
public static  ProductSpec productSpecification(int productId) {
	
	try {
		 
		java.sql.Driver ref=new com.mysql.jdbc.Driver();
		DriverManager.registerDriver(ref);
		
		 ProductSpec productspec = null;
		
		String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
		String filePath = "E:/db.properties";
		FileReader reader = new FileReader(filePath);
		Properties prop = new Properties();
		prop.load(reader);
		
		con = DriverManager.getConnection(dbUrl, prop);
		
		String sql=TkartConstants.productSpecification;
		
		pstmt=con.prepareStatement(sql);
		
		pstmt.setInt(1,productId);
		
		rs=pstmt.executeQuery();
		
		if(rs.next()) {
			
			int Width=rs.getInt("width");
			int Height=rs.getInt("height");
			int depth=rs.getInt("depth");
			int weight=rs.getInt("weight");
			String qualitychecking=rs.getString("qualitychecking");
			String packeting=rs.getString("packeting");
			int quantity=rs.getInt("quantity");
			
			productspec=new ProductSpec(Width, Height, depth, weight, qualitychecking, packeting, quantity);
			
			
		}
		return productspec;
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	finally
	{
		
		
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}

	
}
	return null;
	
	
	
}
public static List shopByGender(String gender) {
	productList.clear();
	try {
		
		java.sql.Driver ref=new com.mysql.jdbc.Driver();
		DriverManager.registerDriver(ref);
		
		String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
		String filePath = "E:/db.properties";
		FileReader reader = new FileReader(filePath);
		Properties prop = new Properties();
		prop.load(reader);
		
		con = DriverManager.getConnection(dbUrl, prop);
		
		String sql=TkartConstants.shopByGender;
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,gender);
		
		
		rs=pstmt.executeQuery();
		while(rs.next()) {
			int productId = rs.getInt("productId");
			String category = rs.getString("category");
			String productName = rs.getString("productName");
			int price = rs.getInt("price");				
			String image=rs.getString("image"); 
			String availibility=rs.getString("availibility");
			productList.add(new Product(productId,category,productName,price,image,availibility));
		}
		
		for(Product product:productList) {
               System.out.println(product);
		}
		return productList;
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	finally
	{
		
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}

	
}
	return null;
	
	
}
public static  List search(String queryString) {
	
	try {
		 
		java.sql.Driver ref=new com.mysql.jdbc.Driver();
		DriverManager.registerDriver(ref);
		
		 productList.clear();
		
		String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
		String filePath = "E:/db.properties";
		FileReader reader = new FileReader(filePath);
		Properties prop = new Properties();
		prop.load(reader);
		
		con = DriverManager.getConnection(dbUrl, prop);
		
		String sql="select  *  from products where  category  like '%"+queryString+"%' or productName like '%"+queryString+"%';";
		
		pstmt=con.prepareStatement(sql);
		
		
		System.out.println("search impl");
		rs =pstmt.executeQuery();
		
		while(rs.next()) {
			int productId = rs.getInt("productId");
			String category = rs.getString("category");
			String productName = rs.getString("productName");
			int price = rs.getInt("price");				
			String image=rs.getString("image"); 
			String availibility=rs.getString("availibility");
			productList.add(new Product(productId,category,productName,price,image,availibility));
		}
		
		for(Product product:productList) {
               System.out.println(product);
		}
		return productList;
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	finally
	{
		
		
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}

	
}
	return null;
	
	
	
}
public static Map review(int productId) {
	
	HashMap<String,String> reviewlist = new HashMap<String,String>(); 
	try {
		
		java.sql.Driver ref=new com.mysql.jdbc.Driver();
		DriverManager.registerDriver(ref);
		
		String dbUrl="jdbc:mysql://localhost:3306/capsv4_db";
		String filePath = "E:/db.properties";
		FileReader reader = new FileReader(filePath);
		Properties prop = new Properties();
		prop.load(reader);
		
		con = DriverManager.getConnection(dbUrl, prop);
		
		String sql=TkartConstants.reviews;
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1,productId);
		
		
		rs=pstmt.executeQuery();
		while(rs.next()) {
			String username=rs.getString("username");
			String review=rs.getString("review");
			reviewlist.put(username,review);
		}
		
		
		return reviewlist ;
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	finally
	{
		
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}

	
}
	return null;
	
	
}
}
