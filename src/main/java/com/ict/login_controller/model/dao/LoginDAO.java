package com.ict.login_controller.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.login_controller.model.vo.LoginVO;

@Repository
public class LoginDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public int getAdmin(LoginVO vo) {
		return sqlSessionTemplate.selectOne("admin_login.getAdmin", vo);
	}

}
