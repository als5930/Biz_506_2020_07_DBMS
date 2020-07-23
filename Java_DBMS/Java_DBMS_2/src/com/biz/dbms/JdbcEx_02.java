package com.biz.dbms;

import java.sql.SQLException;
import java.util.List;

import com.biz.dbms.config.Lines;
import com.biz.dbms.serivce.OrderService;
import com.biz.dbms.serivce.OrderServiceImplv1;
import com.biz.dbms.serivce.OrderView;
import com.biz.domain.OrderVO;

public class JdbcEx_02 {

	public static void main(String[] args) {
	

		OrderService oService = new OrderServiceImplv1();
		OrderView oView = new OrderView();
		
		List<OrderVO> orderList = null;
		try {
			orderList = oService.selectAll();
			if(orderList == null || orderList.size() < 1) {
				System.out.println("데이터가 없습니다");
			} else {
				oView.orderList(orderList);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}