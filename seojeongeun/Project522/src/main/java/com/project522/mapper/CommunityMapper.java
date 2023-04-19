package com.project522.mapper;

import java.util.List;

import com.project522.domain.CommunityVO;

public interface CommunityMapper {
	public List<CommunityVO> getList();
	public void register(CommunityVO community);
	public CommunityVO get(int community_num);
	public int modify(CommunityVO community);
	public void remove(int community_num);
}
