package cn.edu.zjut.service;

import java.io.File;
import java.util.List;

import cn.edu.zjut.po.Seller;
import cn.edu.zjut.po.Space;

public interface ISellerService {
	public boolean addSeller(Seller sellerUser,File upload,String uploadFileName,String uploadContentType);
	public  List<Seller> findByHql();
	public  List<Space> comment();
	public void add(Space transientInstance);
	public boolean adjustSeller(Seller sellerUser);
	public double checkavg(String number);
}
