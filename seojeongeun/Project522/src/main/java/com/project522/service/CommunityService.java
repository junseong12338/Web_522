package com.project522.service;

import java.util.List;

import com.project522.domain.CommunityVO;

public interface CommunityService {
	public void register(CommunityVO community);
	public CommunityVO get(int community_num);
	public void modify(CommunityVO community);
	public void remove(int community_num);
}
