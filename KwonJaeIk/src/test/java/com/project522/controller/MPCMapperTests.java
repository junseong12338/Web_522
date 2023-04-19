package com.project522.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project522.mapper.MPCMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MPCMapperTests {
	@Autowired
	private MPCMapper mapper;
	
	@Test
	public void testGetMPC() {
		mapper.getMPC().forEach(dto -> log.info(dto));
	}

}
