package kr.green.springpr.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.springpr.vo.BoardVo;

public interface BoardDao {

	public List<BoardVo> getBoards();

	public void setBoard(@Param("board")BoardVo boardVo);

}
