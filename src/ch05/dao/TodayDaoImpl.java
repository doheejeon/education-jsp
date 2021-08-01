package ch05.dao;

import java.time.LocalDate;

import ch05.config.Configuration;
import ch05.dao.map.TodayMap;

public class TodayDaoImpl implements TodayDao{
	private TodayMap todayMap;
	
	public TodayDaoImpl() {
		this.todayMap = Configuration.getMapper(TodayMap.class);
	}
	
	@Override
	public LocalDate selectToday() {
		return todayMap.selectToday();
	}
}
//10> jsp에서는 자신이 필요한 Mapper를 스스로 만들어야한다.
/*
아키텍쳐구성하는 각 객체들을 메인에서 만들고 관계를 맺어줬지만 jsp기술쓸땐 각자 자신의 디펜던시를 각각 만든다 ->스프링에서 추후 해결될 예정 (중앙에서 아키텍쳐구성가능)
여기까지 써서 퍼시스턴스 계층이 완성됐다. 그다음과정은 서비스계층.


*/