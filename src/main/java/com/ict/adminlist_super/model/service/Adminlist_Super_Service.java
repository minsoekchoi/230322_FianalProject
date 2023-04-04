package com.ict.adminlist_super.model.service;

import java.util.List;

import com.ict.adminlist_super.model.vo.Adminlist_Super_VO;

public interface Adminlist_Super_Service {

	public int getTotalCount();

	public List<Adminlist_Super_VO> getList(int begin, int end);
}
