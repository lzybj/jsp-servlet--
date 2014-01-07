package com.bdqn.inf;

import java.util.List;

import com.bdqn.domain.BNews;

public interface IBNewsDao {
	public boolean addBNews(BNews news);
	public List<BNews> findByAll();
	public BNews findByNId(int nid);
}
