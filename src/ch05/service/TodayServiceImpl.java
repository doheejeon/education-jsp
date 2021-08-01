package ch05.service;

import java.time.LocalDate;

import ch05.dao.TodayDao;
import ch05.dao.TodayDaoImpl;

public class TodayServiceImpl implements TodayService { //서비스의 디펜던시는 dao니가 멤버변수로 표현한다.
	private TodayDao todayDao;
	
	public TodayServiceImpl() { //역시 각자 자신의 디펜던시 만들기.
		this.todayDao = new TodayDaoImpl();
	}
	
	@Override
	public LocalDate getToday() {
		return todayDao.selectToday();
	}
}

/*
 * 서비스 계층이 완성되었으니 WEbcontent 에가서 프레젠테이션계층을 만들어준다. main.jsp
 * 
 * */
