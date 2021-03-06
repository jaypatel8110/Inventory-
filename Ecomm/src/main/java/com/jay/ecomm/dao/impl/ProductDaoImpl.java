package com.jay.ecomm.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jay.ecomm.dao.ProductDao;
import com.jay.ecomm.model.Product;



@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
		
	}

	public Product getProductById(int id) {
		Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();

        return product;
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> productList = query.list();
        session.flush();
        return productList;
	}

	public void deleteProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
		
	}

}
