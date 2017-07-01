package com.kh.mory.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.kh.mory.Dao.Admin_QuestionDAO;
import com.kh.mory.Model.Admin_QuestionDTO;

public class Admin_QuestionDeatilController implements Controller
{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView modelAndView = new ModelAndView();
		
		String id = request.getParameter("user_id");
		modelAndView.setViewName("WEB-INF/admin/Admin_QuestionDetail.jsp");
		
		return modelAndView;
	}

}
