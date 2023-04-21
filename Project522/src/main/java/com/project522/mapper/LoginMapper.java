
  package com.project522.mapper;

import java.util.List;

import com.project522.domain.TagVO;
import com.project522.domain.UserVO;

public interface LoginMapper {
	
	  public List<UserVO> getUserInfo(String user_id, String user_pw);
	  // mapper.xml에서 user_id, user_pw를 가져와서 리스트화를 함.
  
  }
 