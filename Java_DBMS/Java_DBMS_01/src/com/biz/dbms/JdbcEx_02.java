package com.biz.dbms;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.biz.config.DBConnection;
import com.biz.config.DBContract;
import com.biz.domain.OrderVO;

public class JdbcEx_02 {

	
	public static void main(String[] args) {
		
		
		Connection dbConn = DBConnection.getDBConnection();
		String order_select = DBContract.ORDER_SELECT;
		List<OrderVO> orderList =new ArrayList<OrderVO>();
		
		
		//인터페이스를 이용해서 객체 선언만
		PreparedStatement pSt = null;
		
		// dbConn 객체의 prepareStatement() method에게 SQL
		
		
		
		try {
			pSt = dbConn.prepareStatement(order_select);
			ResultSet result =pSt.executeQuery();
			while(result.next()) {
				
				OrderVO orderVO = new OrderVO();
				
				String o_num = result.getNString(DBContract.ORDER.POS_O_NUM_STR);
				orderVO.setO_num(o_num);
				
				String o_date = result.getNString(DBContract.ORDER.POS_O_DATEV);
				orderVO.getO_date();
				
				
				
				String o_cnum = result.getNString(DBContract.ORDER.POS_O_CNAME_STR);
				orderVO.setO_cnum(o_cnum);
				
				
				String o_pname = result.getNString(DBContract.ORDER.POS_O_PNAME_STR);
				orderVO.setO_pname(o_pname);
				
				
				String o_pcode = result.getNString(DBContract.ORDER.POS_O_PCODE_STR);
				orderVO.setO_pcode(o_pcode);
				
				int o_price = result.getInt(DBContract.ORDER.POS_O_PRICE_INT);
				orderVO.setO_price(o_price);
				
				int o_qty = result.getInt(DBContract.ORDER.POS_O_PNAME_STR);
				orderVO.setO_qty(o_qty);
				
				
				orderList.add(orderVO);
				
				
			}
			pSt.close();
			dbConn.close();
			
		} catch(SQLException e) {
			
		}
		
		System.out.println("================");
		System.out.println("주문내역");
		System.out.println("====================");
		System.out.println("주문번호 주문일자 고객 상품 수량 가격 합계");
		System.out.println("===================================");
		for(OrderVO vo : orderList) {
			System.out.println(vo.getO_num() + "\t");
			System.out.println(vo.getO_date()+ "\t");
			System.out.println(vo.getO_cnum()+ "\t");
			System.out.println(vo.getO_pname()+ "\t");
			System.out.println(vo.getO_pcode()+ "\t");
			System.out.println(vo.getO_price()+ "\t");
			System.out.println(vo.getO_qty()+ "\t");
			
			
		}
		
		
		
		
		
		
		
		
		
	}
}
