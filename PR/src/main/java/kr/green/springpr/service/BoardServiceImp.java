package kr.green.springpr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springpr.dao.BoardDao;
import kr.green.springpr.vo.AccountVo;
import kr.green.springpr.vo.BoardVo;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDao boardDao;

	@Override
	public List<BoardVo> getBoards() {
		return boardDao.getBoards();
	}

	@Override
	public void registerBoard(BoardVo boardVo) {
		boardDao.setBoard(boardVo);
	}

	@Override
	public BoardVo getDetail(Integer id) {
		if (id == null) {
			return null;
		} else {
			BoardVo detail = boardDao.getDetail(id); 
			return detail;
		}
	}

	@Override
	public boolean deleteBoard(Integer id, AccountVo user) {
		BoardVo board = boardDao.getDetail(id);
		if(board == null || !board.getWriter().equals(user.getId())) {
			return false;
		} else {
			board.setState("off");
			boardDao.updateBoard(board);
			return true;
			// 삭제만을 구현하지 않고 수정과 같이 사용하기 위하여 deleteBoard가 아닌 updateBoard로 생성
		}
	}

	@Override
	public boolean updateBoard(BoardVo update, AccountVo user) {
		BoardVo board = boardDao.getDetail(update.getId());
		if(board == null || !board.getWriter().equals(user.getId())) {
			return false;
		} else {
			board.setTitle(update.getTitle());
			board.setContent(update.getContent());
			boardDao.updateBoard(board);
			return true;
		}
	}
}
