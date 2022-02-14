package com.mask.dto;

import java.util.Date;

public class ReplyDTO {
	private Integer rno;
	private Integer titleNum;
	private String replytext;
	private String replyer;
	private Date REPDATE;
	public Integer getRno() {
		return rno;
	}
	public void setRno(Integer rno) {
		this.rno = rno;
	}
	public Integer getTitleNum() {
		return titleNum;
	}
	public void setTitleNum(Integer titleNum) {
		this.titleNum = titleNum;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public Date getREPDATE() {
		return REPDATE;
	}
	public void setREPDATE(Date rEPDATE) {
		REPDATE = rEPDATE;
	}
	@Override
	public String toString() {
		return "ReplyDTO [rno=" + rno + ", titleNum=" + titleNum + ", replytext=" + replytext + ", replyer=" + replyer
				+ ", REPDATE=" + REPDATE + "]";
	}

	
	

}
