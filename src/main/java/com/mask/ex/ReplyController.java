package com.mask.ex;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mask.dto.ReplyDTO;
import com.mask.model.ReplyService;
import com.mask.vo.PageMaker;

@RestController
@RequestMapping("replies")
public class ReplyController {
	@Inject
	private ReplyService rm;
	
	@RequestMapping(value="all/{titleNum}",method=RequestMethod.GET)
	public ResponseEntity<List<ReplyDTO>> list(@PathVariable("titleNum") Integer titleNum){
		System.out.println("list접근");
		ResponseEntity<List<ReplyDTO>> entity=null;
	    try {
	    	entity = new ResponseEntity<>(rm.listReply(titleNum), HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	    }
		return entity;
	}
	@RequestMapping(value = "", method = {RequestMethod.POST}  )
	  public ResponseEntity<String> register(@RequestBody ReplyDTO vo) {
		System.out.println("register 실행");
	    ResponseEntity<String> entity = null;
	    try {
	    	rm.addReply(vo);
	      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	  }
	    return entity;
	}
	    
	  @RequestMapping(value = "/{rno}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	  public ResponseEntity<String> update(@PathVariable("rno") Integer rno
			  , @RequestBody ReplyDTO vo) {
		  System.out.println("업데이트 접근");

	    ResponseEntity<String> entity = null;
	    try {
	      vo.setRno(rno);
	      rm.modifyReply(vo);

	      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }

	  @RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	  public ResponseEntity<String> remove(@PathVariable("rno") Integer rno) {
		  System.out.println("remove 접근");
	    ResponseEntity<String> entity = null;
	    try {
	      rm.removeReply(rno);
	      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }
	  //	  /ex/replies/7/1
	  //				titleNum/page
	  @RequestMapping(value = "{titleNum}/{page}", method = RequestMethod.GET)
	  public ResponseEntity<Map<String, Object>> listPage(@PathVariable("titleNum") Integer titleNum , @PathVariable("page") Integer page) {
		  System.out.println("list all 접근");

	    ResponseEntity<Map<String, Object>> entity = null;
	    
	    try {
	      PageMaker pm = new PageMaker();
	      pm.setPage(page);

	      Map<String, Object> map = new HashMap<String, Object>();
	      
	      List<ReplyDTO> list = rm.listReplyPage(titleNum, pm);
	      System.out.println();
	      map.put("list", list);

	      int replyCount = rm.count(titleNum);
	      
	      pm.setTotalCount(replyCount);

	      map.put("pageMaker", pm);

	      entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);

	    } catch (Exception e) {
	    	System.out.print(e);
	    	e.printStackTrace();
	    	entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
	    } 
	    
	    return entity;
	  }

	
}



