package ch05.domain;

import java.time.LocalDate;

public class Employee {
	private int empId;
	private String empName; 
	private LocalDate hireDate;
	

	
	@Override
	public String toString() { //브라우저 출력용 
		return empId + ", " + empName + ", " + hireDate;
	}
}
