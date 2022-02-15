package com.mask.ex;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mask.model.BootoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BootoController {
	
	@Autowired
	private BootoService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BootoController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */

	
	@RequestMapping(value = "/zboard/airtop", method = RequestMethod.GET)
	public String airtop(Locale locale, Model model) throws Exception {
		model.addAttribute("list", service.selectAll());
		return "zboard/airtop";
	}

	
	@RequestMapping(value = "/include/hederair", method = {RequestMethod.GET,RequestMethod.POST})
	public String headerair() {
		
		return "include/headerair";
	}
	/**
	 * 수정
	 * @param dto
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/zboard/update", method = RequestMethod.POST)
	public Object update(@RequestParam("wishlistNum") String wishlistNum
					    ,@RequestParam("productCnt") String productCnt) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>(); // ajax를 통해 넘어온 배열 데이터 선언
		Map<String, String> map = new HashMap<String, String>();
		map.put("wishlistNum", wishlistNum);
		map.put("productCnt", productCnt);
		try {
			
			if (wishlistNum != null) {
				service.update(map);
				resultMap.put("result", "성공");
			} else {
				resultMap.put("result", "실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}
	/**
	 * 삭제
	 * @param productNum
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/zboard/delete" , method ={ RequestMethod.POST })
	public Object  delete(HttpSession session, HttpServletRequest req) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>(); // ajax를 통해 넘어온 배열 데이터 선언
		String[] wishlistNum = req.getParameterValues("wishlistNum");
		System.out.println("wishlistNum"+ wishlistNum.toString());
		try {
			if (wishlistNum != null && wishlistNum.length > 0) {
				for (int i = 0; i < wishlistNum.length; i++) {
					System.out.println("ajax traditional result : " + i + " : " + wishlistNum[i]);
					service.delete(wishlistNum[i]);
				}
				resultMap.put("result", "삭제 완료 ");
			} else {
				resultMap.put("result", "실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;

	}
	/*
	 * @RequestMapping(value = "/selectAll", method = RequestMethod.GET) public
	 * String selectAll(Model model)throws Exception { model.addAttribute("list",
	 * service.selectAll()); return "selectAll"; }
	 */

}
