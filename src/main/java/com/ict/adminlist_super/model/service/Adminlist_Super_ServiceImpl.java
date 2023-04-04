package com.ict.adminlist_super.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.adminlist_super.model.dao.Adminlist_Super_DAO;
import com.ict.adminlist_super.model.vo.Adminlist_Super_VO;

@Service
public class Adminlist_Super_ServiceImpl implements Adminlist_Super_Service {

	@Autowired
	private Adminlist_Super_DAO adminlist_Super_DAO;

	public void setAdminlist_Super_DAO(Adminlist_Super_DAO adminlist_Super_DAO) {
		this.adminlist_Super_DAO = adminlist_Super_DAO;
	}

	@Override
	public int getTotalCount() {
		return adminlist_Super_DAO.getTotalCount();
	}

	@Override
	public List<Adminlist_Super_VO> getList(int begin, int end) {
		return adminlist_Super_DAO.getList(begin, end);
	}

}
