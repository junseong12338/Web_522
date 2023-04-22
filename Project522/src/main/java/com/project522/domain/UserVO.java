package com.project522.domain;

import lombok.Data;

@Data
public class UserVO {
	
	private String user_name;
	private String user_id; // pk
	private String user_pw;
	private String user_nickname;
	private String user_address; // 이태원 고정값
}
