package com.ict.adminlist_super.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.adminlist_super.model.service.Adminlist_Super_Service;
import com.ict.adminlist_super.model.vo.Adminlist_Super_VO;
import com.ict.common.Paging;

@Controller
public class Adminlist_Super_Controller {

	@Autowired
	private Adminlist_Super_Service adminlist_Super_Service;

	@Autowired
	private Paging paging;

	String cPage;

	private static final Logger logger = LoggerFactory.getLogger(Adminlist_Super_Controller.class);

	public void setAdminlist_Super_Service(Adminlist_Super_Service adminlist_Super_Service) {
		this.adminlist_Super_Service = adminlist_Super_Service;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	// 관리자 리스트 출력
	@RequestMapping("adminlist_super.do")
	public ModelAndView getadminList_Super(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("adminlist_super/adminlist_super");
		// 전체 게시물의 수
		int count = adminlist_Super_Service.getTotalCount();
		paging.setTotalRecord(count);

		// 전체 페이지의 수
		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		} else {
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() + 1);
			}
		}

		// 현재 페이지 구하기
		cPage = request.getParameter("cPage");
		if (cPage == null) {
			paging.setNowPage(1);
		} else {
			paging.setNowPage(Integer.parseInt(cPage));
		}

		// 시작 번호와 끝 번호 구하기
		paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
		paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

		// 시작 블록과 끝 블록 구하기
		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

		// 주의 사항
		// 만약, 끝블록의 숫자가 전체 페이지의 수보다 크다면 끝블록은 전체 페이지 수로 조정한다.
		if (paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}

		List<Adminlist_Super_VO> adminlist_super = adminlist_Super_Service.getList(paging.getBegin(), paging.getEnd());
		mv.addObject("adminlist_super", adminlist_super);
		mv.addObject("paging", paging);

		return mv;
	}

	// 관리자 생성
	@RequestMapping("admincreate_super.do")
	public ModelAndView admincreate_Super() {
		ModelAndView mv = new ModelAndView("adminlist_super/admincreate_super");
		return mv;
	}

}
