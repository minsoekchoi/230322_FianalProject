package com.ict.boardlist_report.model.service;

import java.util.List;

import com.ict.boardlist_report.model.vo.Boardlist_Report_VO;

public interface Boardlist_Report_Service {

	// 신고 처리 필요건이 총 몇개인지 알기 위한 count 하기
	public int getTotalCount();

	// 페이징 기법을 이용한 List 화 시키기
	public List<Boardlist_Report_VO> getList(int begin, int end);

}
