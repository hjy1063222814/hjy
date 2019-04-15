package cn.edu.zjut.service;

import cn.edu.zjut.po.SearchMessage;

public interface ISearchService {
	public boolean search(SearchMessage searchMessage,int order);
}
