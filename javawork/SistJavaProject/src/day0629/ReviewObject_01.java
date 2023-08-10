package day0629;

/* 
  **tv시청목록**
  
  ebs 채널을 시청합니다
  볼륨은 15데시벨 입니다
  -------------------
  kbs 채널을 시청합니다
  볼륨은 18데시벨 입니다
  */

class MyTv{
	
	private String che; //채널
	private String vol; //볼륨
	
	public String getChe() {
		return che;
	}
	public void setChe(String che) {
		this.che = che;
	}
	public String getVol() {
		return vol;
	}
	public void setVol(String vol) {
		this.vol = vol;
	}
	
	public static void title() {
		System.out.println("**TV시청목록**");
	}
	
}

//////////////////////////////////
public class ReviewObject_01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		MyTv.title();
		MyTv t1=new MyTv();
		t1.setChe("ebs");
		t1.setVol("15");
		String c=t1.getChe();
		String v=t1.getVol();
		System.out.println(t1.getChe()+" 채널을 시청합니다\n"+t1.getVol()+" 볼륨을 시청합니다");
		
		System.out.println("---------------------------------");
		
		MyTv t2=new MyTv();
		t2.setChe("kbs");
		t2.setVol("18");
		System.out.println(t2.getChe()+" 채널을 시청합니다\n"+t2.getVol()+" 볼륨을 시청합니다");
		
		
	}

}
