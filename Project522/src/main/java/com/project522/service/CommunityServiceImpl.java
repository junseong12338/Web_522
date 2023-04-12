package com.project522.service;

import org.springframework.stereotype.Service;

import com.project522.domain.CommunityVO;
import com.project522.mapper.CommunityMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class CommunityServiceImpl implements CommunityService{
	private CommunityMapper mapper;

	@Override
	public void register(CommunityVO community) {
		mapper.register(community);
	}

	@Override
	public boolean modify(CommunityVO community) {
		return false;
	}

	@Override
	public CommunityVO get(int community_num) {
		return mapper.get(community_num);
	}

	@Override
	public boolean remove(int community_num) {
		// TODO Auto-generated method stub
		return false;
	}

}
