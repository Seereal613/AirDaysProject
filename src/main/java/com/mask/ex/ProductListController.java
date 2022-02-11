package com.mask.ex;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mask.model.ProductService;



/**
 * Handles requests for the application home page.
 */


@Controller
public class ProductListController {
	
	@Inject
	private ProductService service;
	
	@RequestMapping(value = "/product_list/product_list", method = RequestMethod.GET)
	public String postListTest(Model model) throws Exception {
	
		model.addAttribute("list", service.list());
		return "/product_list/product_list";
	}
	
	
}
