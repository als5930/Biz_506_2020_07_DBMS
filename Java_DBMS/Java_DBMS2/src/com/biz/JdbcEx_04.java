package com.biz.dbms;

import com.biz.dbms.serivce.OrderInput;
import com.biz.dbms.serivce.OrderService;
import com.biz.dbms.serivce.OrderServiceImplv1;

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