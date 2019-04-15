package cn.edu.zjut.po;

public class ShowGroup {
	private String stuId;  
	private String teamId; 
	public ShowGroup() {
		super();
	}
	public ShowGroup(String stuId, String teamId) {
		super();
		this.stuId = stuId;
		this.teamId = teamId;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getTeamId() {
		return teamId;
	}
	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}
}
