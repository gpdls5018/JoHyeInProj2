package service;

import java.util.List;
import java.util.Map;

//제너릭 인터페이스
public interface DaoService<T> {
	
	//리스너(MyContextListener)에서 서블릿 컨텍스트 즉 어플리케이션 영역에 저장한 데이타 소스의 속성명
	String DATA_SOURCE = "DataSource";
	
	void close(); //데이타베이스 닫는 메소드
	List<T> selectList(Map map);//전체 글목록 반환메소드 //검색 파라미터 받기위해 map사용
	T selectOne(String ... one); //레코드 하나만 가져올 때(인자 여러개 가능)
	int getTotalRecordCount(Map map); //페이징(전체 레코드 수)
	int insert(T dto); //글 입력용. map으로 많이 사용
	int update(T dto); //수정용.
	int delete(T no); //삭제용.
}
