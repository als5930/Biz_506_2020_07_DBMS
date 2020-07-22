package com.biz.dbms;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

import com.biz.config.DBConnection;
import com.biz.config.DBContract;

public class JdbcEx_04 {

	
	public static void main(String[] args) {
		

		
		Connection dbConn =DBConnection.getDBConnection();
		String delete_sql = DBContract.ORDER_DELETE;
		Scanner scan =new Scanner(System.in);
		
		System.out.println("삭제할 SEQ ??");
		String str_seq = scan.nextLine();
		
		Long Long_seq = Long.valueOf(str_seq);
		
		PreparedStatement pSt;
		
		try {
			pSt = dbConn.prepareStatement(delete_sql);
		} catch (SQLException e) {
			
			System.out.println();
			
			e.printStackTrace();
		}
		
		
	}
}
