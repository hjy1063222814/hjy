package cn.edu.zjut.po;

import java.util.HashSet;
import java.util.Set;

public class GroupBean {             //����־û�����������û����ڵ��Ŷӵ���Ϣ
public String getTeamId() {
	return teamId;
}

public void setTeamId(String teamId) {
	this.teamId = teamId;
}

public int getLimitNum() {
	return limitNum;
}

public void setLimitNum(int limitNum) {
	this.limitNum = limitNum;
}

public int getNumNow() {
	return numNow;
}

public void setNumNow(int numNow) {
	this.numNow = numNow;
}

public String getTime() {
	return time;
}

public void setTime(String time) {
	this.time = time;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}
private String teamId;   //�Ŷ�id
private String type;     //�Ŷ�����
private int limitNum;//�Ŷ��޶�����
private int numNow;//��ǰ����
private String time;//���ʼʱ��
private String phone;//��������ϵ��ʽ
private String activity;//�
private String organizer;//��֯��
private String budget;  //Ԥ��
public String getBudget() {
	return budget;
}

public void setBudget(String budget) {
	this.budget = budget;
}

public String getOrganizer() {
	return organizer;
}

public void setOrganizer(String organizer) {
	this.organizer = organizer;
}


public String getActivity() {
	return activity;
}

public void setActivity(String activity) {
	this.activity = activity;
}

public String getPlace() {
	return place;
}

public void setPlace(String place) {
	this.place = place;
}
private String place;//��ص�
public GroupBean() {
}

public GroupBean(String teamId, int limitNum, int numNow,String time,String phone,String type,String activity,String organizer) {
this.teamId=teamId;
this.limitNum=limitNum;
this.numNow=numNow;
this.time=time;
this.phone=phone;
this.type=type;
this.activity=activity;
this.organizer=organizer;
}
}
