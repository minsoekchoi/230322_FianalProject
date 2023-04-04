package com.ict.boardlist_room.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.boardlist_room.model.dao.Boardlist_Room_DAO;
import com.ict.boardlist_room.model.vo.Boardlist_Room_VO;

@Service
public class Boardlist_Room_ServiceImpl implements Boardlist_Room_Service {

	@Autowired
	private Boardlist_Room_DAO boardlist_Room_DAO;

	public void setBoardlist_Room_DAO(Boardlist_Room_DAO boardlist_Room_DAO) {
		this.boardlist_Room_DAO = boardlist_Room_DAO;
	}

	@Override
	public int getTotalCount() {
		return boardlist_Room_DAO.getTotalCount();
	}

	@Override
	public List<Boardlist_Room_VO> getList(int begin, int end) {
		return boardlist_Room_DAO.getList(begin, end);
	}

}
