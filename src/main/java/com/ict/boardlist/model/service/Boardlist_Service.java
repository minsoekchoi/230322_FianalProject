package com.ict.boardlist.model.service;

import java.util.List;

import com.ict.boardlist.model.vo.Boardlist_VO;

public interface Boardlist_Service {

	public int getTotalCount();

	public List<Boardlist_VO> getList(int begin, int end);

}
