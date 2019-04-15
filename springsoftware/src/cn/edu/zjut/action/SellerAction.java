package cn.edu.zjut.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.po.SelSpacePK;
import cn.edu.zjut.po.Seller;
import cn.edu.zjut.po.Space;
import cn.edu.zjut.po.Student;
import cn.edu.zjut.service.ISellerService;
import cn.edu.zjut.service.IStudentService;

public class SellerAction {
	private File upload;; //�õ��ϴ����ļ�
	private String uploadFileName;
	private String uploadContentType;
	private List<Seller> seller;
	private List<Space> space;
	private String comment;
	private String sellernumber;
	private String score;
	private Map<String, Object> request, session;
	private Seller sellerUser;
	private ISellerService sellerService=null;

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public Seller getSellerUser(){
		return sellerUser;
	}
	
	public void setSellerUser(Seller sellerUser) {
		this.sellerUser = sellerUser;
	}
	public void setSellerService(ISellerService sellerservice) {
		this.sellerService = sellerservice;
	}
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public List<Seller> getSeller() {
		return seller;
	}

	public void setSeller(List<Seller> seller) {
		this.seller = seller;
	}

	public List<Space> getSpace() {
		return space;
	}

	public void setSpace(List<Space> space) {
		this.space = space;
	}
	public String getSellernumber() {
		return sellernumber;
	}

	public void setSellernumber(String sellernumber) {
		this.sellernumber = sellernumber;
	}

	public String addSeller() {
		

		if(sellerService.addSeller(sellerUser,upload,uploadFileName,uploadContentType))
			return "addsellersuccess";
		else return "addsellerfail";
	}
	
	public String comment() {
		return "ok";
	}

	public String item() {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		if(sellernumber==null)
		{
			Seller seller1=(Seller) session.get("userMessage");
			sellernumber=seller1.getSeller_sellernumber();
		}
		session.put("number", sellernumber);
		seller = sellerService.findByHql();
		space = sellerService.comment();
		return "success";
	}

	public String add() {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		String user = stu.getStu_usernumber();
		String number = (String)session.get("number");
		int score_int = Integer.parseInt(score);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = sdf.format(date);
		if (comment == null || comment.trim().length() == 0) {
			comment = "用户没有做过多的评论";
		}
		SelSpacePK addpk = new SelSpacePK(number, time, user);
		String photo = null;
		if (upload == null) {
			photo = null;
		} else {
			int i = (int) (Math.random() * 90000) + 10000;
			photo = "images2/" + Integer.toString(i) + ".jpg";
			try {
				File file = new File("D:/java/eclipse/springsoftware/WebContent/" + photo);// 生成图片文件
				FileUtils.copyFile(upload, file);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Space addspace = new Space(addpk, score_int, comment, photo);
		sellerService.add(addspace);
		double avg =sellerService.checkavg(number);
		seller = sellerService.findByHql();
		Seller s=seller.get(0);
		s.setSeller_score((float)avg);
		
		sellerService.adjustSeller(s);
		space = sellerService.comment();
		return "success";
	}
	
	public String adjustSeller() {
		if(sellerService.adjustSeller(sellerUser))
			return "adjustsellersuccess";
		else 
			return "adjustsellerfail";
	}
}
