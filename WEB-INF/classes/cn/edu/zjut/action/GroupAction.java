package cn.edu.zjut.action;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.po.GroupBean;
import cn.edu.zjut.po.ShowGroup;
import cn.edu.zjut.service.IGroupService;
public class GroupAction {
private ShowGroup user;
private GroupBean group;
private String id;
private IGroupService groupService = null;

public void setGroupService(IGroupService groupService) {
	this.groupService = groupService;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public ShowGroup getUser() {
return user;
}
public GroupBean getGroup() {
	return group;
}
public void setGroup(GroupBean group) {
	this.group = group;
}
public void setUser(ShowGroup user) {
	this.user = user;
}
public String search() {             //����������������ת����ѯ���ŵĽ���
	all();
	return "search";
}

public String begin() {             //����������������ת���������ŵĽ���
	return "begin";
}

public String mygroup() {          //����������������ת���ҵ����ŵĽ���
	String result=groupService.mygroup();
	return result;
}

public String delete() {             //�����ҵ��������Է����������ɾ���Ŷ�
	
	String result=groupService.delete();
	return result;
}

public String leave() {             //�����ҵ��������Բμ��ߵ�������˳��Ŷ�
	
	String result=groupService.leave();
	return result;
}

public String begin_group() {             //���������Ž����еĴ����Ŷ�
	
	String result=groupService.addGroup(group);
	return result;
}

public String sport() {             //�����ѯ���Ž�����ѡ�����˶�����
	
	return groupService.searchItem("sport");
	
}

public String food() {             //�����ѯ���Ž�����ѡ������ʳ����
	
	return groupService.searchItem("food");
	
}

public String indoor() {             //�����ѯ���Ž�����ѡ���������˶�����
	
	return groupService.searchItem("indoor");
	
}

public String other() {             //�����ѯ���Ž�����ѡ������������
	
	return groupService.searchItem("else");        

}

public String all() {             //�����ѯ���Ž�����������
	
	return groupService.searchItem("all");         

}

public String thisGroup() {             //�����ѯ���Ž����м�����ĳ���Ŷ�
	String teamid=id;

	return groupService.join(teamid);
}

public String fault() {             //������淵��������
	return "success";
}

}