package backjoon_01;

import java.util.Scanner;

public class Googoodan {

	public static void main(String[] args) {
		
/* 2 * 1 = 2
2 * 2 = 4
2 * 3 = 6
2 * 4 = 8
2 * 5 = 10
2 * 6 = 12
2 * 7 = 14
2 * 8 = 16
2 * 9 = 18
 * */

		Scanner sc=new Scanner(System.in);
		
		int N=2;
		
		for(int i=1; i<=9; i++) {
			System.out.println(N+" * "+i+" = "+(N*i));
		}
		
	}

}
