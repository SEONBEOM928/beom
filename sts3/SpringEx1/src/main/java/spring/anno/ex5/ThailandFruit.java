package spring.anno.ex5;

import org.springframework.stereotype.Component;

@Component("tfruit")
public class ThailandFruit implements fruit {

	@Override
	public void writeFruitName() {
		// TODO Auto-generated method stub
		System.out.println("�±��ϸ� ����!!");
	}

}
