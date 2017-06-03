package com.niit.modeldao;
import java.util.List;

import com.niit.modeldto.Product;
public interface Productdao {
	/*public Product addProduct();*/
	public  void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(int productid);
	public List<Product> retrieveProduct();
	public Product getProduct(int productid);

}
