package com.project522.mapper;

import java.util.List;

import com.project522.domain.ReviewVO;
import com.project522.domain.TagVO;

public interface ReviewMapper {
	public void insertReview(ReviewVO reviewvo) throws Exception;
	public List<TagVO> getReviewTag1(TagVO tagvo);
	public List<TagVO> getReviewTag2(TagVO tagvo);
	public List<TagVO> getReviewTag3(TagVO tagvo);
	public List<TagVO> getReviewTag4(TagVO tagvo);
	
	
	// 카페이름 중복 제외 리스트 
	public List<ReviewVO> getReviewList(); 
	
	// 중복된 카페 전체 리스트 
	public List<ReviewVO> getReviewListByCafename(String review_Cafename);

	// 선택된 카페에서 중복 제외한 카테고리 리스트 
	public  List<ReviewVO> getReviewTagList(String review_Cafename);
	
	public ReviewVO get(int Rnum);
	
	public int deleteReview(int Rnum);
	public int modifyReview(ReviewVO reviewvo);
	
	/*review 전체 조회(추가부분 2023.04.19)*/
	public List<ReviewVO> getAllReview();

}
