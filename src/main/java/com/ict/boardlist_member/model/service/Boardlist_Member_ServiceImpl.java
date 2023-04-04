package com.ict.boardlist_member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.boardlist_member.model.dao.Boardlist_Member_DAO;
import com.ict.boardlist_member.model.vo.Boardlist_Member_VO;

@Service
public class Boardlist_Member_ServiceImpl implements Boardlist_Member_Service {

	@Autowired
	private Boardlist_Member_DAO boardlist_Member_DAO;

	public void setBoardlist_Member_DAO(Boardlist_Member_DAO boardlist_Member_DAO) {
		this.boardlist_Member_DAO = boardlist_Member_DAO;
	}

	// 게시물 count 하기
	@Override
	public int getTotalCount() {
		return boardlist_Member_DAO.getTotalCount();
	}

	// paging 기법 전체 List 출력하기
	@Override
	public List<Boardlist_Member_VO> getList(int begin, int end) {
		return boardlist_Member_DAO.getList(begin, end);
	}

}
