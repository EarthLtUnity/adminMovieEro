package com.army.adminMovieEro.theaterAddList.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.army.adminMovieEro.theaterAddList.model.vo.theaterVO;

@Repository("theaterDaoImpl")
public class theaterDaoImpl implements theaterDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public ArrayList<theaterVO> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public theaterVO selectBoard(int boardNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(theaterVO b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(theaterVO b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int boardNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
