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
	public String postList(Model model) throws Exception {
	
		model.addAttribute("list", service.list());
		return "/product_list/product_list";
	}
	
	@RequestMapping(value = "/product_list/product_listDesc", method = RequestMethod.GET)
	public String postListDesc(Model model) throws Exception {
	
		model.addAttribute("list", service.listDesc());
		return "/product_list/product_list";
	}
	
	@RequestMapping(value = "/product_list/product_listFree", method = RequestMethod.GET)
	public String postListFree(Model model) throws Exception {
	
		model.addAttribute("list", service.listFree());
		return "/product_list/product_list";
	}
	
	@RequestMapping(value = "/product_list/product_listSlim", method = RequestMethod.GET)
	public String postListSlim(Model model) throws Exception {
	
		model.addAttribute("list", service.listSlim());
		return "/product_list/product_list";
	}
	
	@RequestMapping(value = "/product_list/product_listKF94", method = RequestMethod.GET)
	public String postListKF94(Model model) throws Exception {
	
		model.addAttribute("list", service.listKF94());
		return "/product_list/product_list";
	}
	
	@RequestMapping(value = "/product_list/product_listBM", method = RequestMethod.GET)
	public String postListBM(Model model) throws Exception {
	
		model.addAttribute("list", service.listBM());
		return "/product_list/product_list";
	}
	
	
}
