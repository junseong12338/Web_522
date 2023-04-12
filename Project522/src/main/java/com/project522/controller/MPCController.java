package com.project522.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project522.mapper.MPCMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/MPC")
public class MPCController {
	@Autowired
	private MPCMapper mapper;
	

}
