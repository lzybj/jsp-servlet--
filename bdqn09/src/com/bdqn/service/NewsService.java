package com.bdqn.service;

import java.util.List;

import com.bdqn.domain.BNews;
import com.bdqn.factory.DAOFactory;

public class NewsService {
	public boolean addNews(BNews news){
		return DAOFactory.getBNewsDao().addBNews(news);
	}
	public List<BNews> getAllTitles(){
		return DAOFactory.getBNewsDao().findByAll();
	}
	public BNews getBNews(int nid){
		return DAOFactory.getBNewsDao().findByNId(nid);
	}
}
