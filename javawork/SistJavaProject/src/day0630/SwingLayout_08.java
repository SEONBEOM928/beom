package day0630;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;

import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingLayout_08 extends JFrame{

	Container cp;
	JButton btn1;
	
	public SwingLayout_08(String title) {
		super(title);
		cp=this.getContentPane();
		
		this.setBounds(120, 240, 400, 200);
		
		cp.setBackground(new Color(42,74,164));
		
		//버튼생성
		btn1=new JButton("버튼1");
		//프레임에 버튼을 추가
		//프레임 기본레이아웃이 BorderLayout
		//BorderLayout추가시 위치 지정
		
		// this.add(btn1, BorderLayout.NORTH); 위쪽
		//this.add(btn1, BorderLayout.SOUTH); 아래쪽
		this.add("North", btn1);
		
		//생성과 동시에 프레임추가 위치지정
		this.add("East",new JButton("오른쪽"));
		this.add("West",new JButton("왼쪽"));
		this.add("Center",new JButton("가운데"));
		this.add("South",new JButton("아래쪽"));
		
		//버튼1에 속성
		btn1.setBackground(Color.DARK_GRAY);
		
		btn1.setForeground(Color.PINK);
		
		
		this.setVisible(true);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new SwingLayout_08("스윙 레이아웃 연습");
		
	}

}
