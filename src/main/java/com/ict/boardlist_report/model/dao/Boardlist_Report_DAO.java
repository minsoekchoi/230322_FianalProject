package com.ict.boardlist_report.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.boardlist_report.model.vo.Boardlist_Report_VO;

@Repository
public class Boardlist_Report_DAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	// 총 게시물 count하기
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("boardlist_report.count");
	}

	// 페이징 기법으로 전체 List 출력하기
	public List<Boardlist_Report_VO> getList(int begin, int end) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("boardlist_report.list", map);
	}

}
