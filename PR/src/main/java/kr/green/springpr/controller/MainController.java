package kr.green.springpr.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signupGet() {
		
		return "signup";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPost(AccountVo userInfo, Model model) {
		boolean isUser = accountService.signup(userInfo);
		if (isUser) {
			return "redirect:/";
		} else return "redirect:/signup";
	}
	
	@RequestMapping(value = "/signup/dup")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id){
		Map<Object, Object> map = new HashMap<Object, Object>();
		boolean dup = accountService.isDuplicated(id);
		map.put("dup", dup);
		return map;
	}	
}
