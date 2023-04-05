package com.ict.boardlist_report.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.boardlist_report.model.service.Boardlist_Report_Service;
import com.ict.boardlist_report.model.vo.Boardlist_Report_VO;
import com.ict.common.Paging;

@Controller
public class Boardlist_Report_Controller {

	@Autowired
	private Boardlist_Report_Service boardlist_Report_Service;

	@Autowired
	private Paging paging;

	// cPage 전역변수화
	String cPage;

	private static final Logger logger = LoggerFactory.getLogger(Boardlist_Report_Controller.class);

	public void setBoardlist_Report_Service(Boardlist_Report_Service boardlist_Report_Service) {
		this.boardlist_Report_Service = boardlist_Report_Service;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

//	----------------------------------
// 기본동작 구현완료 0404
//	@RequestMapping("admin_login.do")
//	public ModelAndView admin_Login() {
//		ModelAndView mv = new ModelAndView("admin_login");
//		return mv;
//	}

	@RequestMapping("boardlist_report.do")
	public ModelAndView getboardList_Report(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("boardlist_report/boardlist_report");
		// 전체 게시물의 수
		int count = boardlist_Report_Service.getTotalCount();
		paging.setTotalRecord(count);

		// 전체 페이지의 수
		// 전체 게시물의 수 <= 한 페이지당 원글의 수 이면 총페이지는 1페이지
		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		} else {
			// 전체 게시물의 수가 한 페이지당 원글의 수보다 많다면
			// ex) 전체게시물 수 10 , 한 페이지당 원글의 수 3 = 3.333 인데 인트니까 3
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
			// 근데 여기서
			// 전체 게시물의 수 와 한 페이지당 게시물의 수를 나눈 나머지가 0이 아니라면
			// 1을 더해 나머지 게시물이 전시될 총페이지를 1개 더 늘려준다.
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() + 1);
			}
		}

		// 현재 페이지 구하기
		// 뒤로 갔을때 현재 페이지로 돌아가야하니까 현재 페이지도 기록해둔다.
		// cPage로 전역변수화 시킨다.
		cPage = request.getParameter("cPage");
		logger.info("현재페이지" + cPage);
		if (cPage == null) {
			paging.setNowPage(1);
		} else {
			paging.setNowPage(Integer.parseInt(cPage));
		}

		// 시작 번호와 끝 번호 구하기
		// ex) 현재페이지 = 1, 한 페이지 당 원글의 수 = 5
		// ex) 시작번호 (1-1)*5+1 = 1
		// ex) 끝번호 (1-1)+5 = 5
		paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
		paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

		// 시작 블럭과 끝 블록 구하기
		// 시작 블록
		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
		System.out.println("시작블록" + paging.getBeginBlock());

		// 끝 블록
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
		System.out.println("끝블록" + paging.getEndBlock());

		// 주의 사항
		// 만약, 끝블록의 숫자가 전체 페이지의 수보다 크다면 끝블록은 전체 페이지 수로 조정한다.
		if (paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}

		List<Boardlist_Report_VO> boardlist_report = boardlist_Report_Service.getList(paging.getBegin(),
				paging.getEnd());
		mv.addObject("boardlist_report", boardlist_report);
		mv.addObject("paging", paging);
		return mv;
	}

	@RequestMapping("view_report.do")
	public ModelAndView view_Report() {
		ModelAndView mv = new ModelAndView("boardlist_report/view_report");
		return mv;
	}

	

}
