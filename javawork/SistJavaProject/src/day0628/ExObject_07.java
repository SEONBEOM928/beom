package day0628;

import java.io.ObjectInputStream.GetField;

class Score{
	
	private String stuName;
	private int java;
	private int orcle;
	private int html;
	
	static final String TITLE="중간고사 시험결과";

	//자동 setter,getter
	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public int getJava() {
		return java;
	}

	public void setJava(int java) {
		this.java = java;
	}

	public int getOrcle() {
		return orcle;
	}

	public void setOrcle(int orcle) {
		this.orcle = orcle;
	}

	public int getHtml() {
		return html;
	}

	public void setHtml(int html) {
		this.html = html;
	}
	
	//합계메서드
	public int getTot()
	{
		int t=java+orcle+html;
		return t;
	}
	
	//평균메서드
	public double getAvg()
	{
		double a=getTot()/3.0;
		return a;
	}

	
}

//////////////////////////////////
public class ExObject_07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//1.생성
		Score s1=new Score();
		
		//1-1 set입력
		s1.setStuName("김지윤");
		s1.setJava(99);
		s1.setOrcle(88);
		s1.setHtml(56);
		
		//1-2 get출력
		System.out.println("***"+Score.TITLE+"***");
		System.out.println("학생명: "+s1.getStuName()+"\n자바점수: "+s1.getJava()+"\n오라클점수: "+s1.getOrcle()+"\nHTML점수: "+s1.getHtml());
		System.out.println("합계 :"+s1.getTot());
		System.out.println("평균 :"+s1.getAvg());
		
		//2.생성
		Score s2=new Score();
		
		//2-1 set입력
		s2.setStuName("김동현");
		s2.setJava(79);
		s2.setOrcle(68);
		s2.setHtml(76);
		
		//1-2 get출력
		System.out.println("학생명: "+s2.getStuName()+"\n자바점수: "+s2.getJava()+"\n오라클점수: "+s2.getOrcle()+"\nHTML점수: "+s2.getHtml());
		System.out.println("합계 :"+s2.getTot());
		System.out.println("평균 :"+s2.getAvg());
		
	}

}
