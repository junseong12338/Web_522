
  package com.project522.mapper;

import java.util.List;

import com.project522.domain.TagVO;
import com.project522.domain.UserVO;

public interface LoginMapper {
	
	  public List<UserVO> getUserInfo(String user_id, String user_pw);
  
  }
 