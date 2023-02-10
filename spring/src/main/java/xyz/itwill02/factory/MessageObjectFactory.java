package xyz.itwill02.factory;

//Factory 디자인 패턴을 이용하여 작성된 클래스 - Factory 클래스 또는 Provider 클래스
// => 프로그램 개발에 필요한 객체를 생성하여 제공하는 기능의 클래스 - 컨테이너(Container)
public class MessageObjectFactory {
	private static MessageObjectFactory _factory;
	
	private MessageObjectFactory() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_factory=new MessageObjectFactory();
	}
	
	public static MessageObjectFactory getFactory() {
		return _factory;
	}
	
	//Factory 클래스에 의해 제공될 객체를 구분하기 위한 상수(Constant)
	public static final int HELLO_MSG=1;
	
	//매개변수로 전달받은 값을 비교하여 프로그램 개발에 필요한 객체를 생성하여 반환하는 메소드
	public MessageObject getMessageObject(int messageObject) {
		MessageObject object=null;
		switch (messageObject) {
		case HELLO_MSG:
			object=new HelloMessageObject();
			break;
		}
		return object;
	}
}












