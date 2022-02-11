package com.mask.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HeaderController {
	
	private static final Logger logger = LoggerFactory.getLogger(HeaderController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
		
//	@RequestMapping(value = "/FAQ/FAQ", method = RequestMethod.GET)
//	public String link_FAQ() {
//	
//		return "/FAQ/FAQ";
//	}
	
//	@RequestMapping(value = "/post/post", method = RequestMethod.GET)
//	public String link_post() {
//	
//		return "/post/post";
//	}
	
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String link_login() {
	
		return "/login/login";
	}
	
	@RequestMapping(value = "/join/join", method = RequestMethod.GET)
	public String link_join() {
	
		return "/join/join";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String link_main() {
	
		return "/main";
	}
	
}
