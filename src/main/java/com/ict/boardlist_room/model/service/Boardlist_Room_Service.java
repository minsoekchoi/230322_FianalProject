package com.ict.boardlist_room.model.service;

import java.util.List;

import com.ict.boardlist_room.model.vo.Boardlist_Room_VO;

public interface Boardlist_Room_Service {

	public int getTotalCount();

	public List<Boardlist_Room_VO> getList(int begin, int end);
}
