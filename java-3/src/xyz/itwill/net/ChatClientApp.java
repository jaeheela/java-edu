package xyz.itwill.net;

import java.awt.BorderLayout;
import java.awt.Font;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

//채팅 클라이언트 프로그램 - Swing 
// => 서버에서 보내온 메세지를 전달받아 JTextArea 컴퍼넌트에 출력 - 무한루프
// => JTextField 컴퍼넌트에서 입력한 메세지를 서버에 전달 - 이벤트 처리 메소드
public class ChatClientApp extends JFrame {
	private static final long serialVersionUID = 1L;

	private JTextArea area;//출력 컴퍼넌트
	private JTextField field;//입력 컴퍼넌트
	
	public ChatClientApp(String title) {
		super(title);
		
		area=new JTextArea();
		field=new JTextField();
		
		JScrollPane pane=new JScrollPane(area);
		
		getContentPane().add(pane, BorderLayout.CENTER);
		getContentPane().add(field, BorderLayout.SOUTH);
		
		area.setFont(new Font("굴림체", Font.BOLD, 20));
		field.setFont(new Font("굴림체", Font.BOLD, 20));
		
		area.setFocusable(false);
		
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setBounds(700, 200, 400, 500);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		new ChatClientApp("자바채팅");
	}
}
