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
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/join/joinform", method = RequestMethod.GET)
	public String link_joinform(Locale locale, Model model) {
	
		return "/join/joinform";
	}
	
	@RequestMapping(value = "/join/post", method = RequestMethod.GET)
	public String lingkhome() {
	
		return "/join/post";
	}
	
	@RequestMapping(value = "/join/joinmain", method = RequestMethod.GET)
	public String link_joinmain(Locale locale, Model model) {
	
		return "/join/joinmain";
	}
	
}
