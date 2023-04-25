
  package com.project522.mapper;

import java.util.List;

import com.project522.domain.UserVO;

public interface LoginMapper {
	
	  public List<UserVO> getUserInfo();
	  
	  public List<UserVO> getUserInfoID_PW(String id, String pw);
  }
 