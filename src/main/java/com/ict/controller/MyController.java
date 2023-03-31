package com.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	@RequestMapping("view_origin.do")
	public ModelAndView view_Origin() {
		ModelAndView mv = new ModelAndView("view_origin");
		return mv;
	}

	@RequestMapping("mypage.do")
	public ModelAndView myPage() {
		ModelAndView mv = new ModelAndView("mypage");
		return mv;
	}

	@RequestMapping("mypage_edit.do")
	public ModelAndView myPage_Edit() {
		ModelAndView mv = new ModelAndView("mypage_edit");
		return mv;
	}

	@RequestMapping("passwordcheck.do")
	public ModelAndView passwordCheck() {
		ModelAndView mv = new ModelAndView("passwordcheck");
		return mv;
	}

	@RequestMapping("passwordedit.do")
	public ModelAndView passwordEdit() {
		ModelAndView mv = new ModelAndView("passwordedit");
		return mv;
	}

	@RequestMapping("boardlist_report.do")
	public ModelAndView boardList_Report() {
		ModelAndView mv = new ModelAndView("boardlist_report");
		return mv;
	}

	@RequestMapping("view_report.do")
	public ModelAndView view_Report() {
		ModelAndView mv = new ModelAndView("view_report");
		return mv;
	}

	@RequestMapping("boardlist.do")
	public ModelAndView boardlist() {
		ModelAndView mv = new ModelAndView("boardlist");
		return mv;
	}

	@RequestMapping("boardlist_write.do")
	public ModelAndView boardlist_Write() {
		ModelAndView mv = new ModelAndView("boardlist_write");
		return mv;
	}

	@RequestMapping("view_boardlist.do")
	public ModelAndView view_Boardlist() {
		ModelAndView mv = new ModelAndView("view_boardlist");
		return mv;
	}

	@RequestMapping("boardlist_member.do")
	public ModelAndView boardList_Member() {
		ModelAndView mv = new ModelAndView("boardlist_member");
		return mv;
	}

	@RequestMapping("boardlist_room.do")
	public ModelAndView boardList_Room() {
		ModelAndView mv = new ModelAndView("boardlist_room");
		return mv;
	}

	@RequestMapping("boardlist_outmember.do")
	public ModelAndView boardList_Outmember() {
		ModelAndView mv = new ModelAndView("boardlist_outmember");
		return mv;
	}

	@RequestMapping("usercreate_super.do")
	public ModelAndView usercreate_Super() {
		ModelAndView mv = new ModelAndView("usercreate_super");
		return mv;
	}

	@RequestMapping("userlist_super.do")
	public ModelAndView userlist_Super() {
		ModelAndView mv = new ModelAndView("userlist_super");
		return mv;
	}

	@RequestMapping("admincreate_super.do")
	public ModelAndView admincreate_Super() {
		ModelAndView mv = new ModelAndView("admincreate_super");
		return mv;
	}

	@RequestMapping("adminlist_super.do")
	public ModelAndView adminlist_Super() {
		ModelAndView mv = new ModelAndView("adminlist_super");
		return mv;
	}

}
