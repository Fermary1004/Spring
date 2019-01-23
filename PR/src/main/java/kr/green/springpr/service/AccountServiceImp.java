package kr.green.springpr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.springpr.dao.AccountDao;
import kr.green.springpr.vo.AccountVo;

@Service
public class AccountServiceImp implements AccountService {

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	AccountDao accountDao;
	
	@Override
	public AccountVo signin(AccountVo loginInfo) {
		AccountVo user = accountDao.getAccount(loginInfo.getId());
		if (user != null && passwordEncoder.matches(loginInfo.getPw(), user.getPw())) {
			return user;
		} else return null;
	}

}
