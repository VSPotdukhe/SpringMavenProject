package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

@Controller
public class ProductController
{
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/showProduct")
	public String showProduct(Model m)
	{
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		return "Product";
	}
	
	@RequestMapping(value="/insertProduct",method=RequestMethod.POST)
	public String insertProduct(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("productDesc")String productDesc,@RequestParam("productPrice") int productPrice,Model m)
	{
		Product product=new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setProductPrice(productPrice);
		productDAO.addProduct(product);
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		return "Product";
	}

	@RequestMapping("/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId, Model m)
	{  
		System.out.println("I am in delete product controller");
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		System.out.println("Product List updated");
		return "Product";
	}

	@RequestMapping(value = "/editProduct/{productId}")
	public String editProduct(@PathVariable("productId") int productId, Model m) {
		Product product = productDAO.getProduct(productId);
		m.addAttribute("product", product);
		
		productDAO.updateProduct(product);
	
		return "UpdateProduct";
	}
	
	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String updateProduct(@RequestParam("productId") int productId,
			@RequestParam("productName") String productName, @RequestParam("productDesc") String productDesc, @RequestParam("productPrice") int productPrice,Model m) {
		Product product = new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setProductPrice(productPrice);
		productDAO.updateProduct(product);
		List<Product> productList = productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		return "Product";
	}
	
	@RequestMapping("/productUser")
	public String productUser(Model m)
	{
		System.out.println("Product reading method");
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		System.out.println("Product is displayed");
		return "ProductUser";
	}
	
	@RequestMapping(value = "/productDisplay/{productId}")
	public String productDisplay(@PathVariable("productId") int productId, Model m) {
		Product product = productDAO.getProduct(productId);
		m.addAttribute("product", product);
		
		productDAO.updateProduct(product);
	
		return "ProductDisplay";
	}
}
