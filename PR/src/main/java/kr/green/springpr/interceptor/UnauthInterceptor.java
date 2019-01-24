package kr.green.springpr.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UnauthInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object user = session.getAttribute("user");
		// AccountVo user = (AccountVo)session.getAttribute("user");
		// 가 되는게 맞지만 여기서는 어짜피 정보가 있는지 여부만 체크하므로 굳이 형변환을 하지 않아도 된다
		if(user != null) {
			response.sendRedirect(request.getContextPath()+"/bbs/list");
		}
		return true;
	}
}
