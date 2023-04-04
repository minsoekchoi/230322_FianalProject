package com.ict.login_controller.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.login_controller.model.dao.LoginDAO;
import com.ict.login_controller.model.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;

	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	@Override
	public int getAdmin(LoginVO vo) {
		return loginDAO.getAdmin(vo);
	}

}
