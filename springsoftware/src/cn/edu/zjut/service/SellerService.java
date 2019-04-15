package cn.edu.zjut.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import cn.edu.zjut.dao.ISellerDAO;
import cn.edu.zjut.po.Seller;
import cn.edu.zjut.po.Space;
import cn.edu.zjut.po.User;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class SellerService implements ISellerService {
	
	private Map<String, Object> request, session;
	private ISellerDAO sellerDAO = null;
	@SuppressWarnings({ "rawtypes", "unused", "unchecked" })
	private List<Seller> items = new ArrayList();
	public SellerService(){
		System.out.println("create SellerService.");
	}
	public void setSellerDAO(ISellerDAO sellerDAO) {
		this.sellerDAO = sellerDAO;
	}
	
	//�̼���פ��Ϣ�ύ
		public boolean addSeller(Seller sellerUser,File upload,String uploadFileName,String uploadContentType) {
			ActionContext ctx= ActionContext.getContext();
			session=(Map) ctx.getSession();
			request=(Map) ctx.get("request");
			int i=(int)(Math.random()*90000)+10000; 
		  	String seller_sellernumber=Integer.toString(i);
		  	String seller_photo=Integer.toString(i)+".jpg";
			
			try {
	        	//System.out.println(uploadFileName);
	        	 File file = new File("D:/java/eclipse/springsoftware/WebContent/images2/"+seller_photo);//生成图片文件
	            FileUtils.copyFile(upload, file);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
			
			User user =(User) session.get("loginUser");
			String user_username = user.getUser_username();
			sellerUser.setUser_username(user_username);
			sellerUser.setSeller_sellernumber(seller_sellernumber);
			sellerUser.setSeller_photo(seller_photo);
			if(sellerDAO.save(sellerUser))
				return true;		
			return false;
		}
		
		public List<Seller> findByHql() {
			ActionContext ctx= ActionContext.getContext();
			session=(Map) ctx.getSession();
			request=(Map) ctx.get("request"); 
			String number = (String)session.get("number");	
			String hql = "from Seller as seller where seller_sellernumber = ";
			List<Seller> list = sellerDAO.findByHql(hql + number);
	        return list;
			}
		public  List<Space> comment(){
			String hql = "from Space as space where software_seller_sellernumber = ";
			ActionContext ctx= ActionContext.getContext();
			session=(Map) ctx.getSession();
			request=(Map) ctx.get("request"); 
			String number = (String)session.get("number");	
			List<Space> list1 = sellerDAO.comment(hql + number);
			for(int i = 0;i < list1.size();i++) {
			list1.get(i).setSelspace_photo(list1.get(i).getSelspace_photo());}
	        return list1;
		}
		public void add(Space transientInstance) {
			sellerDAO.add(transientInstance);
		}
		public double checkavg(String number)
		{
			String hql="select avg(selspace_score) from Space where software_seller_sellernumber ="+number;
			return sellerDAO.checkavg(hql);
		}
		public boolean adjustSeller(Seller sellerUser) {
			ActionContext ctx= ActionContext.getContext();
			session=(Map) ctx.getSession();
			request=(Map) ctx.get("request");
			User user=(User) session.get("loginUser");
			if(user.getUser_type().equals("seller"))
			{
				Seller seller=(Seller) session.get("userMessage");
				sellerUser.setSeller_sellernumber(seller.getSeller_sellernumber());
				sellerUser.setUser_username(seller.getUser_username());
				sellerUser.setSeller_photo(seller.getSeller_photo());
				sellerUser.setSeller_type(seller.getSeller_type());
				sellerUser.setSeller_score(seller.getSeller_score());
				String sellername = sellerUser.getSeller_sellername();
				String place = sellerUser.getSeller_place();
				String telephone = sellerUser.getSeller_telephone();
				int average = sellerUser.getSeller_average();
				String opentime = sellerUser.getSeller_opentime();
				String sellerinfo = sellerUser.getSeller_sellerinfo();
				if(sellername.equals(""))
				{
					request.put("tip", "店名不能为空");
					return false;
				}
				else if(place.equals(""))
				{
					request.put("tip", "商家地址不能为空");
					return false;
				}
				else if(telephone==null)
				{
					request.put("tip", "商家电话不能为空");
					return false;
				}
				else if(opentime.equals(""))
				{
					request.put("tip", "营业时间不能为空");
					return false;
				}
				sellerDAO.update(sellerUser);
				session.put("userMessage", sellerUser);
			}
			else
			{
				sellerDAO.update(sellerUser);
			}
			return true;
		}
}
