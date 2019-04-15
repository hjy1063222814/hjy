package cn.edu.zjut.po;

public class Like {
    private LikePK lpk;
    public Like(){}
   	 public Like(LikePK lpk) {
   	 this.lpk = lpk; 
   	 }
	public LikePK getLpk() {
		return lpk;
	}
	public void setLpk(LikePK lpk) {
		this.lpk = lpk;
	}

}
