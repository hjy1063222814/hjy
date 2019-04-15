package cn.edu.zjut.service;

import cn.edu.zjut.po.*;

import java.io.File;
import java.util.List;
public interface IStuspaceService {
	public List findbyStu();
	public List findbyHot();
	public List findbyTime();
	public boolean addcomment(String txt,File upload,String uploadFileName,String uploadContentType);
}
