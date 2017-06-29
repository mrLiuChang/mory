package com.kh.mory.Diarycontroller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.kh.mory.DiaryDTO.DiaryDTO;
import com.kh.mory.DiaryIDAO.IDiaryDAO;

public class Diary_ListController implements Controller 
{
	private IDiaryDAO dao;
	
	public void setDao(IDiaryDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		
		ModelAndView modelAndView = new ModelAndView();
		
		
		String requ_seq = request.getParameter("requ_seq");
		String diary_seq = request.getParameter("diary_seq");
		try
		{
			ArrayList<DiaryDTO> diaryList = new ArrayList<DiaryDTO>();
			
			if (requ_seq == null)
			{	
				diaryList = dao.list(diary_seq);
			}else if (diary_seq == null) {
				diaryList = dao.couplelist(requ_seq);
			}
			
			
			modelAndView.addObject("diaryList",diaryList);			
			modelAndView.setViewName("WEB-INF/Diary/Diary.jsp");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		
		
		return modelAndView;
	}

}