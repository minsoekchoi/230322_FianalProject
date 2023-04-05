package com.ict.userlist_super.model.service;

import java.util.List;

import com.ict.userlist_super.model.vo.Userlist_Super_VO;

public interface Userlist_Super_Service {

	public int getTotalCount();

	public List<Userlist_Super_VO> getList(int begin, int end);

	public int getUserCreate(Userlist_Super_VO userlist_Super_VO);
}
