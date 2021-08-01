package ch05.service;

import ch05.dao.EmployeeDao;
import ch05.dao.EmployeeDaoImpl;
import ch05.domain.Employee;

public class EmployeeServiceImpl implements EmployeeService{
	private EmployeeDao empDao;
	
	public EmployeeServiceImpl() { //생성자에선는 디펜던시인 DAO를 준비
		this.empDao = new EmployeeDaoImpl();
	}
	
//	public EmployeeServiceImpl(EmployeeDao empDao) { (과제때 내가쓴코드 없어도됐네 
//		this.empDao = empDao;
//	}
	
	@Override
	public Employee getEmployee(int empId) {
		return empDao.selectEmployee(empId);
	}
}
