package cn.edu.zjut.po;

public class SearchMessage {
	private String text;         //查询信息
	private int type;		//查询标签
	public SearchMessage() {
		super();
	}
	public SearchMessage(String text, int type) {
		super();
		this.text = text;
		this.type = type;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
}
