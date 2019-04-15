package cn.edu.zjut.service;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.dao.ISellerDAO;
import cn.edu.zjut.po.SearchMessage;

public class SearchService implements ISearchService{
	private ISellerDAO sellerDAO = null;
	private Map<String, Object> request, session;
	
	public void setSellerDAO(ISellerDAO sellerDAO) {
		this.sellerDAO = sellerDAO;
	}

	public boolean search(SearchMessage searchMessage,int order)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String hql="";
		session.put("searchMessage", searchMessage);
		
		if(searchMessage.getType()==0)
			hql = "from Seller as seller where seller_sellername like '%"+searchMessage.getText()+"%'";
		else if(searchMessage.getType()==1)
			hql = "from Seller as seller where seller_type like '%"+searchMessage.getText()+"%'";
		//对所查询类型进行判断
		if(order==1)
			hql=hql+" order by seller_average asc";
		else if(order==2)
			hql=hql+" order by seller_average desc";
		else if(order==3)
			hql=hql+" order by seller_score desc";
		//对排序进行判断
		List list=sellerDAO.searchByText(hql);
		if(list.isEmpty())
			return false;
		else
		{
			session.put("tip", "查询成功！");
			session.put("sellerList", list);
			return true;
		}
	}
}
