package kr.green.springpr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.springpr.service.BoardService;
import kr.green.springpr.vo.BoardVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/bbs/list")
	public String list(Model model) {
		List<BoardVo> list = boardService.getBoards();
		model.addAttribute("list", list);
		return "bbs/list";
	}
	
	@RequestMapping(value = "/bbs/detail", method=RequestMethod.GET)
	public String detailGET(Integer id, Model model) {
		BoardVo detail = boardService.getDetail(id);
		if(detail == null) {
			return "bbs/list";
		} else {
			model.addAttribute("detail", detail);
			return "bbs/detail";
		}
	}	
	
	@RequestMapping(value = "/bbs/register", method=RequestMethod.GET)
	public String registerGET(BoardVo boardVo) {
		return "bbs/register";
	}	
	
	@RequestMapping(value = "/bbs/register", method=RequestMethod.POST)
	public String registerPOST(BoardVo boardVo) {
		boardService.registerBoard(boardVo);
		return "redirect:/bbs/list";
	}	
}
