package cn.edu.zjut.action;

import java.io.File;

import cn.edu.zjut.service.IStuspaceService;

public class AddStuspaceAction {
	private String stuspace_txt;	
	private IStuspaceService stuspaceService = null;
	
	
	
	private File upload;; //得到上传的文件
	private String uploadFileName;
	private String uploadContentType;
	
	

	
	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	
	public String getStuspace_txt() {
		return stuspace_txt;
	}


	public void setStuspace_txt(String stuspace_txt) {
		this.stuspace_txt = stuspace_txt;
	}



	public void setStuspaceService(IStuspaceService stuspaceService) {
		this.stuspaceService = stuspaceService;
	}	
	public String addStuspace() 
	{
		if (stuspaceService.addcomment(stuspace_txt,upload,uploadFileName,uploadContentType))	
			return "addstuspace";
		else
			return "failaddstuspace";
	}
}
