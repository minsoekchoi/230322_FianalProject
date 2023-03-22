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
	public ModelAndView myBoardList_1() {
		ModelAndView mv = new ModelAndView("boardlist_report");
		return mv;
	}
}
