package day0620;

public class CharAt_14 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String juminNum="971234-2321458";
		//index순서 01234567...
		char seventh=juminNum.charAt(7); //charAt은 index에 있는 문자하나 추출
		
		
		//System.out.println(seventh);
		//남자입니다 or 여자입니다 or 2000년 이후 남자입니다 or 2000년 이후 여자입니다
		
		switch(seventh) {
		
		case '1':
			System.out.println("남자입니다");
			break;
		case '2':
			System.out.println("여자입니다");
			break;
		case '3':
			System.out.println("2000년 이후 남자입니다");
			break;
		case '4':
			System.out.println("2000년 이후 여자입니다");
			break;
		default: 
			System.out.println("잘못된 정보입니다.");
			break;

		}
			
	}

}
