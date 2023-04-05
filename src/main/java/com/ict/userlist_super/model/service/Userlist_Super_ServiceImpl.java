package com.ict.userlist_super.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.userlist_super.model.dao.Userlist_Super_DAO;
import com.ict.userlist_super.model.vo.Userlist_Super_VO;

@Service
public class Userlist_Super_ServiceImpl implements Userlist_Super_Service {

	@Autowired
	private Userlist_Super_DAO userlist_Super_DAO;

	public void setUserlist_Super_DAO(Userlist_Super_DAO userlist_Super_DAO) {
		this.userlist_Super_DAO = userlist_Super_DAO;
	}

	@Override
	public int getTotalCount() {
		return userlist_Super_DAO.getTotalCount();
	}

	@Override
	public List<Userlist_Super_VO> getList(int begin, int end) {
		return userlist_Super_DAO.getList(begin, end);
	}

	@Override
	public int getUserCreate(Userlist_Super_VO userlist_Super_VO) {
		return userlist_Super_DAO.getUserCreate(userlist_Super_VO);
	}

}
