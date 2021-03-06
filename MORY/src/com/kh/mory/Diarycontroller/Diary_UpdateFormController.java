package com.kh.mory.Diarycontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.kh.mory.DiaryDTO.DiaryDTO;
import com.kh.mory.DiaryIDAO.IDiaryDAO;

public class Diary_UpdateFormController implements Controller 
{
	private IDiaryDAO dao;
	
	public void setDao(IDiaryDAO dao)
	{
		this.dao = dao;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		request.setCharacterEncoding("UTF-8");
		
		ModelAndView modelAndView = new ModelAndView();
		
		String write_seq = request.getParameter("write_seq");

		DiaryDTO dto = dao.cont(write_seq);
		modelAndView.addObject("diary",dto);
				
		modelAndView.setViewName("WEB-INF/diary/DiaryUpdateForm.jsp");		
			
		return modelAndView;
	}

}
