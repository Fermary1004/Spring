package kr.green.springpr.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.springpr.service.BoardService;
import kr.green.springpr.vo.AccountVo;
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
	
	@RequestMapping(value = "/bbs/update", method=RequestMethod.GET)
	public String updateGET(Integer id, Model model) {
		BoardVo detail = boardService.getDetail(id);
		if(detail == null) {
			return "bbs/list";
		} else {
			model.addAttribute("detail", detail);
			return "bbs/update";
		}
	}
	
	@RequestMapping(value = "/bbs/update", method=RequestMethod.POST)
	public String updatePOST(BoardVo update, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		AccountVo user = (AccountVo)session.getAttribute("user");
		if (!boardService.updateBoard(update, user)) {
			return "redirect:/bbs/list";
		} else {
			model.addAttribute("id", update.getId());
			return "redirect:/bbs/detail";
		}
	}
	
	@RequestMapping(value = "/bbs/delete")
	public String delete(Integer id, HttpServletRequest request, Model model) {
		// request에서 session정보를 가져와서 session에 저장된 user정보를 가져옴
		HttpSession session = request.getSession();
		AccountVo user = (AccountVo)session.getAttribute("user");
		// 삭제권환이 없는 유저가 uri를 통해 삭제를 시도할 수 있기 떄문에 권한이 없는
		// 유저가 삭제를 시도하면 막아주기 위해서 게시판 id와 현제 로그인한 유저정보를 전달
		if (!boardService.deleteBoard(id, user)) {
			model.addAttribute("id", id);
			return "redirect:/bbs/detail";
		} else return "redirect:/bbs/list";
	}	
}
