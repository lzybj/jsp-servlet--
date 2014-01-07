package com.bdqn.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import com.bdqn.domain.Product;

public class Demo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		HashMap<Product,Integer> cart = new HashMap<Product, Integer>();
//		cart.put(new Product(1,"a",12.5f),3);
//		cart.put(new Product(1,"a",2.5f),4);
//		cart.put(new Product(1,"a",10.5f),5);
//		Set<Product> keys = cart.keySet();
//		for (Product product : keys) {
//			System.out.println(product.getProductName());
//			Integer val = (Integer)cart.get(product);
//			System.out.println(val);
//		}
		
		List<Product> cartP = new ArrayList<Product>();
		cartP.add(new Product(1,"a",12.5f));
		cartP.add(new Product(1,"b",2.5f));
		cartP.add(new Product(1,"c",10.5f));
		List<Integer> cartP2 = new ArrayList<Integer>();
		cartP2.add(3);
		cartP2.add(4);
		cartP2.add(5);
		HashMap<List<Product>,List<Integer>> cart = new HashMap<List<Product>, List<Integer>>();
		cart.put(cartP, cartP2);
		
		
	}

}
