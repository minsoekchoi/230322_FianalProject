package com.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	@RequestMapping("mypage.do")
	public ModelAndView myPage() {
		ModelAndView mv = new ModelAndView("mypage");
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
}
