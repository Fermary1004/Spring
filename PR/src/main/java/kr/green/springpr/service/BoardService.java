package kr.green.springpr.service;

import java.util.List;

import kr.green.springpr.vo.BoardVo;

public interface BoardService {

	public List<BoardVo> getBoards();

	public void registerBoard(BoardVo boardVo);

	public BoardVo getDetail(Integer id);

}
