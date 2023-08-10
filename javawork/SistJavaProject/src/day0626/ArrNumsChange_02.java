package day0626;

public class ArrNumsChange_02 {

	public static void main(String[] args) {
		
		int [] arr= {3,6,9,23,8,42,12,5,34,11};
		
		//출력
		System.out.println("원래데이터");
		
		for(int i=0;i<arr.length;i++)
		{
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		
		
		//데이터 거꾸로 변경하기
		for(int i=0;i<arr.length/2;i++)
		{
			int temp=arr[i];
			arr[i]=arr[arr.length-1-i] ; // 10개일때 0하고 9번이랑 바꿈
			arr[arr.length-1-i]=temp;	
		}
		
		System.out.println("순서 바꾼후 데이터");
		for(int i=0;i<arr.length;i++)
		{
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		
		//selection sort(오름차순 정렬)
		//Arrays.sort(arr):배열 arr을 정렬한다.
		//선택정렬: 가장 작은 숫자를 앞으로 보내자
		
		int temp;
		for(int i=0;i<arr.length-1;i++)
		{
			for(int j=i+1;j<arr.length;j++)
			{
				if(arr[i]>arr[j])
					{
					temp=arr[i];			
					arr[i]=arr[j];
					arr[j]=temp;
					}
			}				
		}
		System.out.println("오름차순 정렬 데이터");
		for(int i=0;i<arr.length;i++)
		System.out.print(arr[i]+" ");
	}

}
