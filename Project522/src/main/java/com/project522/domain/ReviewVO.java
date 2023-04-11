package com.project522.domain;

import java.util.Date;

import lombok.Data;
@Data
public class ReviewVO {
	private int Review_Num;
	private int Cafe_Num;
	private String Review_SelectTag1;
	private String Review_SelectTag2;
	private String Review_SelectTag3;
	private String Review_SelectTag4;
	private String Review_HashTag;
	private String Review_Title;
	private String User_Id;
	private String Review_Content;
	private Date Review_Date;
	private String Review_Image;
	

}
