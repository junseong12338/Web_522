package com.project522.mapper;

import java.util.List;

import com.project522.domain.CommunityDTO;

public interface CommunityMapper {
	public List<CommunityDTO> viewAll();
	public List<CommunityDTO> getList();
	public void insertCommunity(CommunityDTO dto);
}
