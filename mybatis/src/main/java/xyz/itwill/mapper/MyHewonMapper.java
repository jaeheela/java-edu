package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import xyz.itwill.dto.MyHewon;

public interface MyHewonMapper {
	int insertHewon(MyHewon hewon);
	List<MyHewon> selectHewonList();
	List<MyHewon> selectDiscriminatorHewonList();
	List<MyHewon> selectStateHewonList(int state);
	String selectBeanHewonId(MyHewon hewon);
	//HashMap 클래스(Map 인터페이스)의 제네릭은 맵키를 [String]으로 설정하고 맵값은 [Object]로 설정하여 사용
	String selectMapHewonId(Map<String, Object> map);
	int insertMapHewon(Map<String, Object> map);
	List<Map<String, Object>> selectMapHewonList();
	//@Param : 추상메소드의 매개변수에 저장된 값을 XML 기반의 맵퍼파일에 엘리먼트에게 전달하여
	//등록된 SQL 명령에서 사용할 수 있도록 제공하는 어노테이션
	//value 속성 : 추상메소드의 매개변수에 저장된 값을 XML 기반의 매퍼파일의 엘리먼트에 등록된
	//SQL 명령에서 사용하기 식별자를 속성값으로 설정
	// => 다른 속성이 없는 경우 속성값만 설정 가능
	String selectParamHewonId(@Param(value = "name") String name,@Param("email") String email);
	List<MyHewon> selectSearchHewonList(Map<String, Object> map);
	List<MyHewon> selectNameHewonList(String name);
	List<MyHewon> selectDynaminNameHewonList(String name);
}













