package xyz.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import xyz.itwill.dto.MyHewon;

//mybatis 프레임워크는 인터페이스만 이용하여 매퍼 설정 가능
// => 추상메소드에 매퍼 어노테이션(Mapper Annotation)을 사용하여 SQL 명령 등록
public interface MyHewonInterfaceMapper {
	//추상메소드에 등록된 SELECT 명령은 기본적으로 검색결과를 자동 매핑하여 제공
	// => 검색결과를 자동 매핑하기 위해서는 검색행의 컬럼명과 Java 클래스의 필드명이 반드시 동일
	// => 검색행의 컬럼명과 Java 클래스의 필드명이 하나도 같지 않으면 Java 객체 대신 NULL 제공
	//@Results : 검색행의 컬럼값을 Java 객체의 필드값으로 저장되도록 매핑 처리하는 정보를 제공하는 어노테이션
	// => XML 기반의 매퍼 파일에서 resultMap 엘리먼트와 유사한 기능을 제공
	//value 속성 : 매핑정보를 제공하는 @Result 어노테이션 배열을 속성값으로 설정
	@Results(value = {
		//@Result : 검색행의 컬럼값이 Java 객체 필드에 저장되도록 설정하는 엘리먼트
		// => XML 기반의 매퍼 파일에서 id(result) 엘리먼트와 유사한 기능을 제공
		//column 속성 : 검색행의 컬럼명을 속성값으로 설정
		//property 속성 : 검색행의 컬럼값이 저장될 Java 클래스의 필드명을 속성값으로 설정
		@Result(column = "hewon_id", property = "id")
		,@Result(column = "hewon_name", property = "name")
		,@Result(column = "hewon_phone", property = "phone")
		,@Result(column = "hewon_email", property = "email")
		,@Result(column = "hewon_state", property = "state")
	})
	@Select(value = "select * from myhewon order by hewon_id")
	List<MyHewon> selectHewonList();
}











