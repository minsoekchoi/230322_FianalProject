package com.ict.boardlist_member.model.service;

import java.util.List;

import com.ict.boardlist_member.model.vo.Boardlist_Member_VO;

public interface Boardlist_Member_Service {

	// 총 게시물 count하기
	public int getTotalCount();

	// 페이징 기법을 이용한 List 화 시키기
	public List<Boardlist_Member_VO> getList(int begin, int end);

}
