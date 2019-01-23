package kr.green.springpr.service;

import kr.green.springpr.vo.AccountVo;

public interface AccountService {

	public AccountVo signin(AccountVo loginInfo);

	public boolean signup(AccountVo userInfo);

	public boolean isDuplicated(String id);

}
