package model.mymall;

import java.sql.Timestamp;

public class MallDto {
	
	private String no;
	private String sangpum;
	private String photo;
	private String price;
	private String ipgoday;
	private Timestamp writeday;
	
	
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getSangpum() {
		return sangpum;
	}
	public void setSangpum(String sangpum) {
		this.sangpum = sangpum;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIpgoday() {
		return ipgoday;
	}
	public void setIpgoday(String ipgoday) {
		this.ipgoday = ipgoday;
	}
	
}