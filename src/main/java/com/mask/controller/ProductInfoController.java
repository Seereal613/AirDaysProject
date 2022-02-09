package com.mask.controller;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mask.model.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/product_info/*")
public class ProductInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductInfoController.class);
	
	
	@Inject
	private ProductService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/product_info/product_detale", method = RequestMethod.GET)
//	public String product_list() {
//	
//		return "/product_info/product_detale";
//	}
	
	//기능 구현
	@RequestMapping(value = "/product_detale", method = RequestMethod.GET)
	public void product_list_test(@RequestParam("productNum") String productNum,Model model) throws Exception{
		model.addAttribute("pdto",service.read(productNum));
	}
	
}
