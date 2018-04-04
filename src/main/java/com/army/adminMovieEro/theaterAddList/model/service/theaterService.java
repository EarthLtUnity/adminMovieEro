package com.army.adminMovieEro.theaterAddList.model.service;

import java.util.ArrayList;

import com.army.adminMovieEro.theaterAddList.model.vo.theaterVO;

public interface theaterService {

	public ArrayList<theaterVO> selectList();
	
	public theaterVO selectBoard(int boardNum);
	
	public int insertBoard(theaterVO b);
	
	public int updateBoard(theaterVO b);
	
	public int deleteBoard(int boardNum);
	
	public int getListCount();
}
