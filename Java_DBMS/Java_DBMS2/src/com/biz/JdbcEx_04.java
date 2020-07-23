package com.biz.dbms;

import java.sql.SQLException;
import java.util.List;

import com.biz.dbms.serivce.OrderInput;
import com.biz.dbms.serivce.OrderService;
import com.biz.dbms.serivce.OrderServiceImplv1;
import com.biz.dbms.serivce.OrderView;
import com.biz.domain.OrderVO;

public class JdbcEx_04 {

	public static void main(String[] args) {

		OrderService oService = new OrderServiceImplv1();
	
		OrderInput oInput = new OrderInput();
		while (true) {
				
				if(!oInput.orderUpdate()) {
					break;
				}

			
		}
		System.out.println("업무 종료");

	}

}