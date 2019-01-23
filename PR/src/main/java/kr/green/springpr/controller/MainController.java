package kr.green.springpr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.springpr.service.AccountService;
import kr.green.springpr.vo.AccountVo;

@Controller
public class MainController {
	
	@Autowired
	AccountService accountService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeGet() {
		
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String homePost(AccountVo loginInfo, Model model) {
		AccountVo user = accountService.signin(loginInfo);
		model.addAttribute("user", user);
		return "home";
	}
	
}
