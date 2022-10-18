package xyz.itwill.net;

import java.awt.BorderLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

//채팅 클라이언트 프로그램 - Swing 
// => 서버에서 보내온 메세지를 전달받아 JTextArea 컴퍼넌트에 출력 - 무한루프
// => JTextField 컴퍼넌트에서 입력한 메세지를 서버에 전달 - 이벤트 처리 메소드
public class ChatClientApp extends JFrame implements ActionListener {
	private static final long serialVersionUID = 1L;

	private JTextArea area;//출력 컴퍼넌트
	private JTextField field;//입력 컴퍼넌트
	
	//서버의 소켓과 연결된 소켓정보를 저장하기 위한 필드
	private Socket socket;
	
	//서버에서 보내온 메세지를 읽기 위한 입력스트림을 저장하기 위한 필드
	private BufferedReader in;
	
	//서버에서 메세지를 보내기 위한 출력스트림을 저장하기 위한 필드
	private PrintWriter out;
	
	//대화명을 저장하기 위한 필드
	private String aliasName;
	
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
		
		//JTextField 컴퍼넌트에서 이벤트가 발생될 경우 실행될 이벤트 처리 객체 등록
		// => 클라이언트가 메세지를 입력한 경우 실행될 명령을 이벤트 처리 메소드에 작성
		field.addActionListener(this);
		
		try {
			//Socket 객체 생성 - 채팅 서버에 접속
			socket=new Socket("192.168.13.31", 5000);
			
			//서버와 연결된 소켓의 입력스트림을 반환받아 대량의 문자데이타를 읽을 수
			//있는 입력스트림으로 확장 
			in=new BufferedReader(new InputStreamReader(socket.getInputStream()));
			
			//서버와 연결된 소켓의 출력스트림을 반환받아 모든 형식의 값을 문자열로 전달할 수
			//있는 출력스트림으로 확장 
			out=new PrintWriter(socket.getOutputStream(), true);
		} catch (IOException e) {
			JOptionPane.showMessageDialog(this, "서버에 접속할 수 없습니다.", "접속오류", JOptionPane.ERROR_MESSAGE);
			System.exit(0);
		}
		
		//대화명을 입력받아 필드에 저장
		// => 정상적인 대화명이 입력되도록 무한루프 이용
		while(true) {
			//JOptionPane.showInputDialog(Component parent, String message, String title, int messageType)
			// => 입력 다이얼로그를 보여주는 메소드 - 입력값을 문자열로 반환
			aliasName=JOptionPane.showInputDialog(this,"대화명을 입력해 주세요.","대화명 입력", JOptionPane.QUESTION_MESSAGE);
			
			//정상적인 대화명을 입력한 경우 반복문 종료
			if(aliasName!=null && !aliasName.equals("")) break;
			
			JOptionPane.showMessageDialog(this, "대화명을 반드시 입력해 주세요.", "입력오류", JOptionPane.ERROR_MESSAGE);
		}
		
		//서버에 대화명 전달
		out.println(aliasName);
		
		//서버에서 보내온 메세지를 전달받아 JTextArea 컴퍼넌트에 추가하여 출력 - 무한루프
		while(true) {
			try {
				area.append(in.readLine()+"\n");
				
				//JTextArea 컴퍼넌트의 스크롤을 맨 아래로 이동 처리
				area.setCaretPosition(area.getText().length());
			} catch (IOException e) {
				JOptionPane.showMessageDialog(this, "서버와 연결이 끊어졌습니다.", "접속오류", JOptionPane.ERROR_MESSAGE);
				System.exit(0);
			}
		}
	}
	
	public static void main(String[] args) {
		new ChatClientApp("자바채팅");
	}

	//이벤트 처리 메소드에서는 JTextField 컴퍼넌트의 입력값(메세지)을 반환받아 서버에 전달하는 명령 작성
	@Override
	public void actionPerformed(ActionEvent e) {
		//JTextField 컴퍼넌트의 입력값을 반환받아 저장
		String message=field.getText();
		
		if(!message.equals("")) {//입력메세지가 존재하는 경우
			out.println(message);//서버에 메세지 전달
			field.setText("");//JTextField 컴퍼넌트 초기화
		}
	}
}






