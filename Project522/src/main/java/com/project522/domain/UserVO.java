package com.project522.domain;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.project522.example.IdExistNotCheckMatchedException;
import com.project522.example.PasswordNotMatchedException;

import lombok.Data;


@Data
public class UserVO {
	@NotBlank(message = "공백은 입력할 수 없습니다.")
	@Pattern(regexp = "[가-힣]*",message = "한글만 입력가능합니다.")
	@Size(min=2, max=4, message = "이름은 2~4글자만 입력가능합니다.")
	private String user_name;
	
	@NotBlank(message = "공백은 입력할 수 없습니다.")
	@Size(min=2, max=20, message = "ID은 2~20글자만 입력가능합니다.")
	@Pattern(regexp = "[a-zA-Z0-9]*",message = "영어+숫자만 입력가능합니다.")
	private String user_id;
	
	@NotBlank(message = "공백은 입력할 수 없습니다.")
	@Size(min=2, max=20, message = "PW은 2~20글자만 입력가능합니다.")
	@Pattern(regexp = "[a-zA-Z0-9]*",message = "영어+숫자만 입력가능합니다.")
	private String user_pw;
	
	@NotBlank(message = "공백은 입력할 수 없습니다.")
	@Size(min=2, max=20, message = "PW은 2~20글자만 입력가능합니다.")
	@Pattern(regexp = "[a-zA-Z0-9]*",message = "영어+숫자만 입력가능합니다.")
	private String user_pw2;
	
	private String user_nickname;
	private String user_address; // 이태원 고정값
	
	private boolean userIdExist;


	public void validateCheck() {
		if(!userIdExist)
		 throw new IdExistNotCheckMatchedException("중복 확인 버튼을 눌러주세요");
	}
	
	public void validateEquals() {
	    if (!user_pw.equals(user_pw2)) {
	        throw new PasswordNotMatchedException("비밀번호가 일치하지 않습니다.");
	    }
	}
}
