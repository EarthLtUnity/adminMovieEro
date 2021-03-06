package com.army.adminMovieEro.movieAddList.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.army.adminMovieEro.movieAddList.model.dao.MovieListDao;
import com.army.adminMovieEro.movieAddList.model.vo.MovieListVo;

@Service("movieListService")
public class MovieListServiceImpl implements MovieListService {

	@Autowired
	MovieListDao movieListDao;

	@Override
	public List<MovieListVo> loadMovieList() {
		System.out.println("Service loadMovieList 실행..................");
		List<MovieListVo> movieList = new ArrayList<MovieListVo>();

		movieList = movieListDao.loadMovieList();

		return movieList;
	}

	@Override
	public void deleteMovie(String movieUniNum) {
		System.out.println("Service deleteMovieService 실행..........................");
		movieListDao.deleteMovie(movieUniNum);
	}

	@Override
	public MovieListVo loadMovieTitle(String numMOVIE_INFO_SEQ) {
		System.out.println("Service loadMovieTitle 실행..................");
		MovieListVo movieVo = new MovieListVo();
		
		movieVo = movieListDao.loadMovieTitle(numMOVIE_INFO_SEQ);
		
		return movieVo;
	}

}
