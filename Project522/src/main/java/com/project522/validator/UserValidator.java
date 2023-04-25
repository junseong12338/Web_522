package com.project522.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.project522.domain.UserVO;


public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		UserVO userBean = (UserVO)target;
		
		if(userBean.getUser_pw().equals(userBean.getUser_pw2()) == false) {
			errors.rejectValue("user_pw", "NotEquals");
			errors.rejectValue("user_pw2", "NotEquals");
		}
	}
	
}