package com.ict.userlist_super.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.userlist_super.model.vo.Userlist_Super_VO;

@Repository
public class Userlist_Super_DAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("userlist_super.count");
	}

	public List<Userlist_Super_VO> getList(int begin, int end) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("userlist_super.list", map);
	}

	public int getUserCreate(Userlist_Super_VO userlist_Super_VO) {
		return sqlSessionTemplate.insert("userlist_super.usercreate", userlist_Super_VO);

	}

}
