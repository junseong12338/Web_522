package com.project522.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.project522.domain.MPCVO;

public interface MPCMapper {
	
	public List<MPCVO> getMPC();
}
