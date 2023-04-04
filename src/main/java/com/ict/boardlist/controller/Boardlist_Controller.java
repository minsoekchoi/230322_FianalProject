package com.ict.boardlist.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.boardlist.model.service.Boardlist_Service;
import com.ict.boardlist.model.vo.Boardlist_VO;
import com.ict.common.Paging;

@Controller
public class Boardlist_Controller {

	@Autowired
	private Boardlist_Service boardlist_Service;

	@Autowired
	private Paging paging;

	// cPage 전역변수화
	String cPage;

	private static final Logger logger = LoggerFactory.getLogger(Boardlist_Controller.class);

	public void setBoardlist_Service(Boardlist_Service boardlist_Service) {
		this.boardlist_Service = boardlist_Service;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	@RequestMapping("boardlist.do")
	public ModelAndView getboardList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("boardlist/boardlist");
		// 전체 게시물의 수
		int count = boardlist_Service.getTotalCount();
		paging.setTotalRecord(count);

		// 전체 페이지의 수
		// 전체 게시물의 수 <= 한 페이지당 원글의 수 이면 총페이지는 1페이지
		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		} else {
			// 전체 게시물의 수가 한 페이지당 원글의 수보다 많다면
			paging.setTotalRecord(paging.getTotalRecord() / paging.getNumPerPage());
			// 근데 여기서 전체 게시물의 수와 한 페이지당 게시물의 수가 나눈 나머지가 0이 아니라면 페이지를 1개더
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() + 1);
			}
		}

		// 현재 페이지 구하기
		// 뒤로 갔을때 현재 페이지로 돌아가야하니까 현재 페이지도 기록해둔다.
		// cPage를 전역변수화 시킨다.
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
		// 시작 블록
		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
		// 끝 블록
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
		// 주의사항
		// 만약, 끝블록의 숫자가 전체 페이지의 수보다 크다면 끝 블록은 전체 페이지 수로 조정한다.
		if (paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}

		List<Boardlist_VO> boardlist = boardlist_Service.getList(paging.getBegin(), paging.getEnd());
		mv.addObject("boardlist", boardlist);
		mv.addObject("paging", paging);
		return mv;
	}

}
