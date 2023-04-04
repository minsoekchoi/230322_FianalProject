package com.ict.boardlist_report.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.boardlist_report.model.dao.Boardlist_Report_DAO;
import com.ict.boardlist_report.model.vo.Boardlist_Report_VO;

@Service
public class Boardlist_Report_ServiceImpl implements Boardlist_Report_Service {

	@Autowired
	private Boardlist_Report_DAO boardlist_Report_DAO;

	public void setBoardlist_Report_DAO(Boardlist_Report_DAO boardlist_Report_DAO) {
		this.boardlist_Report_DAO = boardlist_Report_DAO;
	}

	// 게시물 count 하기
	@Override
	public int getTotalCount() {
		return boardlist_Report_DAO.getTotalCount();
	}

	// paging 기법 전체 List 출력하기
	@Override
	public List<Boardlist_Report_VO> getList(int begin, int end) {
		return boardlist_Report_DAO.getList(begin, end);
	}

}
