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
	
	public ReviewVO get(int Rnum);
	
	public int deleteReview(int Rnum);
	public int modifyReview(ReviewVO reviewvo);

}
