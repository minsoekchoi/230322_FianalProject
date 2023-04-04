package com.ict.boardlist_outmember.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.boardlist_outmember.model.dao.Boardlist_OutMember_DAO;
import com.ict.boardlist_outmember.model.vo.Boardlist_OutMember_VO;

@Service
public class Boardlist_OutMember_ServiceImpl implements Boardlist_OutMember_Service {

	@Autowired
	private Boardlist_OutMember_DAO boardlist_OutMember_DAO;

	public void setBoardlist_OutMember_DAO(Boardlist_OutMember_DAO boardlist_OutMember_DAO) {
		this.boardlist_OutMember_DAO = boardlist_OutMember_DAO;
	}

	@Override
	public int getTotalCount() {
		return boardlist_OutMember_DAO.getTotalCount();
	}

	@Override
	public List<Boardlist_OutMember_VO> getList(int begin, int end) {
		return boardlist_OutMember_DAO.getList(begin, end);
	}
}
