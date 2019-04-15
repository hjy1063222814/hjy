package cn.edu.zjut.po;

public class Space {
	private SelSpacePK selpk;
	private float selspace_score;
	private String selspace_comment;
	private String selspace_photo;

	public Space(){
		
	}
	
	public Space(SelSpacePK selpk, float selspace_score,
			String selspace_comment, String selspace_photo) {
		super();
		this.selpk = selpk;
		this.selspace_score = selspace_score;
		this.selspace_comment = selspace_comment;
		this.selspace_photo = selspace_photo;
	}

	public SelSpacePK getSelpk() {
		return selpk;
	}

	public void setSelpk(SelSpacePK selpk) {
		this.selpk = selpk;
	}

	public float getSelspace_score() {
		return selspace_score;
	}

	public void setSelspace_score(float selspace_score) {
		this.selspace_score = selspace_score;
	}

	public String getSelspace_comment() {
		return selspace_comment;
	}

	public void setSelspace_comment(String selspace_comment) {
		this.selspace_comment = selspace_comment;
	}


	public String getSelspace_photo() {
		return selspace_photo;
	}

	public void setSelspace_photo(String selspace_photo) {
		this.selspace_photo = selspace_photo;
	}

}