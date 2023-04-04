package com.ict.login_controller.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ict.login_controller.model.service.LoginService;
import com.ict.login_controller.model.vo.LoginVO;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	@RequestMapping("admin_login.do")
	public ModelAndView getLogin() {
		return new ModelAndView("admin_login/admin_login");
	}

	@RequestMapping("getAdminLogin.do")
	@ResponseBody
	public String returnGetAdminLogin(@ModelAttribute LoginVO vo) {
		int result = loginService.getAdmin(vo);
		if (result > 0) {
			return "1";
		} else {
			return "0";
		}
	}

	@RequestMapping("adminComplete.do")
	public ModelAndView returnAdminComplete() {
		return new ModelAndView("boardlist_member/boardlist_member");
	}

}
