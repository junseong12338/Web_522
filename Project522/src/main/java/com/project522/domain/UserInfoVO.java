package com.project522.domain;
import com.project522.example.PasswordNotMatchedException;

import lombok.Data;
@Data
public class UserInfoVO {
	
	private String user_name;
	private String user_id;
	private String user_pw;
	private String user_nickname;
	private String user_address; // 이태원 고정값
	

	
public void validateEquals() {
		
	    if (!user_pw.equals(user_pw)) {
	        throw new PasswordNotMatchedException("비밀번호가 일치하지 않습니다.");
	    }
	}
	
}
