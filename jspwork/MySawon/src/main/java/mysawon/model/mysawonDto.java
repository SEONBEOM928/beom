package mysawon.model;

import java.sql.Timestamp;

public class mysawonDto {
	
	private int num;
	private String name;
	private String id;
	private String pass;
	private String joomin;
	private int age;
	private String gender;
	private String buseo;
	private String grade;
	private String photo;
	private Timestamp ipsaday;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getJoomin() {
		return joomin;
	}
	public void setJoomin(String joomin) {
		this.joomin = joomin;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBuseo() {
		return buseo;
	}
	public void setBuseo(String buseo) {
		this.buseo = buseo;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Timestamp getIpsaday() {
		return ipsaday;
	}
	public void setIpsaday(Timestamp ipsaday) {
		this.ipsaday = ipsaday;
	}
	
}
