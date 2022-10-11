package xyz.itwill.awt;

import java.awt.Frame;

public class FlowLayoutApp extends Frame {
	private static final long serialVersionUID = 1L;

	public FlowLayoutApp(String title) {
		super(title);
		
		setBounds(600, 100, 400, 400);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		new FlowLayoutApp("FlowLayout");
	}
}
