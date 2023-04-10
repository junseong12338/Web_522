package com.project522.domain;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CommunityDAO {
	@Autowired
    private SqlSession session;


    public void memberInsert(CommunityDTO community) {
         session.insert("com.project522.mapper.CommunityMapper.insertCommunity", community);
    }
}
