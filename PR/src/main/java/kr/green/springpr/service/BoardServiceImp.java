package kr.green.springpr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springpr.dao.BoardDao;
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
		BoardVo detail = boardDao.getDetail(id); 
		return detail;
	}

}
