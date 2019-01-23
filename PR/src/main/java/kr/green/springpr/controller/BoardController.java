package kr.green.springpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping(value = "/bbs/list")
	public String list(Model model) {
		
		return "bbs/list";
	}	
}
