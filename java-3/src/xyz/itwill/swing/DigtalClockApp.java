package xyz.itwill.swing;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

//날짜와 시간을 출력하는 GUI 프로그램 작성
public class DigtalClockApp extends JFrame {
	private static final long serialVersionUID = 1L;

	//날짜와 시간을 출력하기 위한 컴퍼넌트를 저장하기 위한 필드
	private JLabel clockLabel;
	
	//스레드를 일시 중지하거나 다시 실행하기 위한 컴퍼넌트를 저장하기 위한 필드
	private JButton startBtn, stopBtn;
	
	//날짜와 시간을 변경하는 스레드의 실행상태를 저장하기 위한 필드
	// => false : 스레드 중지 상태, true : 스레드 동작 상태(기본) 
	private boolean isRun;
	
	public DigtalClockApp(String title) {
		super(title);
		
		isRun=true;
		
		clockLabel=new JLabel("2022년 10월 12일 17시 27분 40초",JLabel.CENTER);
		clockLabel.setFont(new Font("굴림체", Font.BOLD, 30));
		clockLabel.setForeground(Color.DARK_GRAY);
		
		startBtn=new JButton("다시 실행");
		stopBtn=new JButton("일시 중지");
		JPanel jPanel=new JPanel();
		jPanel.add(startBtn);
		jPanel.add(stopBtn);
		startBtn.setFont(new Font("굴림체", Font.BOLD, 20));
		stopBtn.setFont(new Font("굴림체", Font.BOLD, 20));
		startBtn.setEnabled(false);//버튼 비활성화 처리
		
		getContentPane().add(clockLabel,BorderLayout.CENTER);
		getContentPane().add(jPanel,BorderLayout.SOUTH);
		
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setBounds(700, 200, 600, 200);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		new DigtalClockApp("디지털 시계");
	}
}






