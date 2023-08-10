package day0629;

/* 
 나는 스타벅스 코엑스매장에 왔습니다
 아이스 아메리카노를 주문합니다
 우산을 샀어요 */

class Starbucks{
	
	private String store; //지점
 	private String menu; //메뉴
 	private String goods; //텀블러 등등.. 
	
 	public String getStore() {
		return store;
	}
	public void setStore(String store) {
		this.store = store;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
	}
	
 	
}

/////////////////////////
public class ReviewObject_02 {

	public static void main(String[] args) {
		
		Starbucks st=new Starbucks();
		st.setStore("코엑스");
		st.setMenu("아이스 아메리카노");
		st.setGoods("우산");
		System.out.println("나는 스타벅스 "+st.getStore()+"매장에 왔습니다");
		System.out.println(st.getMenu()+"를 주문합니다");
		System.out.println(st.getGoods()+"을 샀어요");
	}

}
