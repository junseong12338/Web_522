package com.project522.domain;


import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
@Getter
@Setter
public class CommunityDTO {
	private int community_num;
	private String community_category;
	private String community_title;
	private String community_context;
	private Date community_date;
	private String community_map;
	private String user_id;
	private String community_place;
	private Date community_schedule;
	
	public CommunityDTO(int num, String category, String title, String context) {
		community_num = num;
		community_category = category;
		community_title = title;
		community_context = context;
	}

	public CommunityDTO(int community_num, String community_category, String community_title, String community_context,
			Date community_date, String community_map, String user_id, String community_place,
			Date community_schedule) {
		super();
		this.community_num = community_num;
		this.community_category = community_category;
		this.community_title = community_title;
		this.community_context = community_context;
		this.community_date = community_date;
		this.community_map = community_map;
		this.user_id = user_id;
		this.community_place = community_place;
		this.community_schedule = community_schedule;
	}
	
	public CommunityDTO(BigDecimal num, String category, String title, String context, Timestamp date, String map, String id, String place, Timestamp schedule) {
		community_num = num.intValue();
		this.community_category = category;
		this.community_title = title;
		this.community_context = context;
		this.community_date = new Date(date.getTime());
		this.community_map = map;
		this.user_id = id;
		this.community_place = place;
		this.community_schedule = new Date(schedule.getTime());
	}
	
	public CommunityDTO(BigDecimal num, String category, String title, Timestamp date, String map, String id, String place, Timestamp schedule) {
		community_num = num.intValue();
		this.community_category = category;
		this.community_title = title;
		this.community_date = new Date(date.getTime());
		this.community_map = map;
		this.user_id = id;
		this.community_place = place;
		this.community_schedule = new Date(schedule.getTime());
	}
}
