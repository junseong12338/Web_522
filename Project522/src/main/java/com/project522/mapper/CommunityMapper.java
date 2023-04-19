package com.project522.mapper;

import java.util.List;

import com.project522.domain.CommunityVO;
import com.project522.domain.ReplyVO;

public interface CommunityMapper {
	public List<CommunityVO> getList();
	public void register(CommunityVO community);
	public CommunityVO get(int community_num);
	public int modify(CommunityVO community);
	public void remove(int community_num);
	public List<ReplyVO> getCommentList(int community_num);
	public ReplyVO getComment(int comment_num);
	public void registerReply(ReplyVO reply);
	public void modifyReply(ReplyVO reply);
	public void removeReply(int comment_num);
}
