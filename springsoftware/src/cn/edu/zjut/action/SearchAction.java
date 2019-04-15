package cn.edu.zjut.action;

import cn.edu.zjut.po.SearchMessage;
import cn.edu.zjut.service.ISearchService;

public class SearchAction {
	private SearchMessage searchMessage;
	private int order;
	private ISearchService searchService = null;
	public void setOrder(int order) {
		this.order = order;
	}
	public SearchMessage getSearchMessage() {
		return searchMessage;
	}
	public void setSearchMessage(SearchMessage searchMessage) {
		this.searchMessage = searchMessage;
	}
	public void setSearchService(ISearchService searchService) {
		this.searchService = searchService;
	}
	
	public String execute()
	{
		if(searchService.search(searchMessage,order))
			return "success";
		return "fail";
		
	}
}
