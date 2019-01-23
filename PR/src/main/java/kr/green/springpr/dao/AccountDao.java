package kr.green.springpr.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.springpr.vo.AccountVo;

public interface AccountDao {

	public AccountVo getAccount(@Param("id")String id);

	public void setAccount(@Param("user")AccountVo userInfo);

}
