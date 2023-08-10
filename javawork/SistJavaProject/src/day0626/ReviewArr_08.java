package day0626;

public class ReviewArr_08 {

	public static void main(String[] args) {
		// 해당 배열을 for문을 이용하여 출력하시오
		
		//1.ex>0번지: 영환이
		String [] names= {"영환이","수환이","동환이","성환이"};
		
		for(int i=0;i<names.length;i++)
			System.out.println(i+"번지: "+names[i]);
		
		
		//2. 해당 배열을 가로로 출력하시오
		int [] nums= {2,4,5,7,8};
		
		for(int i=0;i<nums.length;i++)
			System.out.print(nums[i]+" ");
		
		
		System.out.println();
		
		//flowers
		String [] flowers= {"장미","튤립","안개꽃","할매꽃","민들레"};
		
		for(int i=0;i<flowers.length;i++)
			System.out.println(i+1+"번째: "+flowers[i]);
		
		
		System.out.println();
		
		//colors
		String [] colors= {"red","yellow","green","blue","black"};
		for(int i=colors.length-1;i>=0;i--)
			System.out.print(colors[i]+" ");
		
		
	}

}
