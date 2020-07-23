package com.biz.dbms.serivce;

import java.sql.SQLException;
import java.util.List;

import com.biz.domain.OrderVO;

public interface OrderService {

	
	
	// java에서 DBMS와 관련된 App을 만들떄 최소한르호 구현해야할 method
	public int insert(OrderVO orderVO) throws SQLException; // orderVO에 값을 담아서 전달받아  insert 수행
	public List<OrderVO> selectAll() throws SQLException;// 조전에 관계없이 모든 데이터를 추출하여 return
	public OrderVO findBySeq(long seq) throws SQLException; // findByid() pk칼럼을 기준으로 데이터를 select
	
	public int update(OrderVO orderVO) throws SQLException;
	public int delete(long seq) throws SQLException;
	
}
