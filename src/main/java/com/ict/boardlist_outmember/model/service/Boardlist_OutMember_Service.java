package com.ict.boardlist_outmember.model.service;

import java.util.List;

import com.ict.boardlist_outmember.model.vo.Boardlist_OutMember_VO;

public interface Boardlist_OutMember_Service {

	public int getTotalCount();

	public List<Boardlist_OutMember_VO> getList(int being, int end);
}
