package com.jay.ecomm.dao;

import java.util.*;
import com.jay.ecomm.model.Product;

public interface ProductDao {

	void addProduct(Product product);
	Product getProductById(int id);
	List<Product> getAllProducts();
	void deleteProduct(int id);
}
