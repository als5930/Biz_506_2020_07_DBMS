package com.biz.config;

public class DBContract {

	
	public final static String DB_DRIVER="oracle.jdbc.driver.OracleDriver";
	public  final static String DB_URL= "jdbc:oracle:thin:@localhost:1521:xe";
	public final static String DB_URLS = "user2";
	public final static String DB_PASSWORD = "user2";
	
	
	

	public final static String ORDER_DELETE =
			"DELETE FROM"
			+ ORDER.TABLE + "FROM"
			+ "WHERE"
			+ ORDER.COL_O_SEQ_LONG + "=? ";
	
	
	
	

	public final static String ORDER_UPDATE =
			"UPDATE"
			+ ORDER.TABLE 
			+ "SET"
			+ ORDER.COL_O_SEQ_LONG + "=?,"
		    + ORDER.COL_O_NUM_STR + "=?,"
		    + ORDER.COL_O_DATE_STR + "=?,"
		    + ORDER.COL_O_CNAME_STR + "=?,"
		    + ORDER.COL_O_PCODE_STR + "=?,"
		    + ORDER.COL_O_PNAME_STR + "=?,"
		    + ORDER.COL_O_PRICE_INT + "=?,"
		    + ORDER.COL_O_QTY_INT + "=?,"
		    + ORDER.COL_O_TOTAL_INT + "=?,"
		    + "WHERE"
		    + ORDER.COL_O_SEQ_LONG;
		    

	
	
	
	
	public final static String ORDER_INSERT =
			"INSERT INTO "
			+ ORDER.TABLE + "( "
			+ ORDER.COL_O_SEQ_LONG + ","
		    + ORDER.COL_O_NUM_STR + ","
		    + ORDER.COL_O_DATE_STR + ","
		   + ORDER.COL_O_CNAME_STR + ","
		    + ORDER.COL_O_PCODE_STR + ","
		//    + ORDER.COL_O_PNAME_STR + ","
		//    + ORDER.COL_O_PRICE_INT + ","
		   // + ORDER.COL_O_QTY_INT + ","
		    + ORDER.COL_O_TOTAL_INT 
		   + " ) VALUES ( "
		    + " SEQ_ORDER.NEXTVAL,?,'2020-07-21',?,?,?)";
		    
		    
		    
		    
		    
		    
		   // + " ) VALUES ( "
		  //  + "?,?,?,?,?,?,?,?,?"
		   // + ")";
			
			
			
			
	
	public final static String ORDER_SELECT=
			"SELECT"
    + ORDER.COL_O_SEQ_LONG + ","
    + ORDER.COL_O_NUM_STR + ","
    + ORDER.COL_O_DATE_STR + ","
    + ORDER.COL_O_CNAME_STR + ","
    + ORDER.COL_O_PCODE_STR + ","
    + ORDER.COL_O_PNAME_STR + ","
    + ORDER.COL_O_PRICE_INT + ","
    + ORDER.COL_O_QTY_INT + ","
    + ORDER.COL_O_TOTAL_INT + ","
	+ " FROM " + ORDER.TABLE;
	
	
	
	
	
	

	public static class ORDER{
		public final static String TABLE = "TBL_ORDER";
		
		
		
	    public final static String COL_O_SEQ_LONG = " o_seq,";	//number
	    public final static String COL_O_NUM_STR = " o_num,"; //char(6 byte)
	    public final static String COL_O_DATE_STR = " o_date,";	//char(10 byte)
	    public final static String COL_O_CNAME_STR = " o_cname,"; //char(5 byte)
	    public final static String COL_O_PCODE_STR  = " o_pcode,";	//char(6 byte)
	    public final static String COL_O_PNAME_STR  = " o_pname,";	//char(6 byte)
	    public final static String COL_O_PRICE_INT	= " o_price,"; //number
	    public final static String COL_O_QTY_INT = " o_qty,";	//number
	    public final static String COL_O_TOTAL_INT =" o_total";	//number
		

	    public final static int POS_O_SEQ_LONG = 1;	//number
	    public final static int POS_O_NUM_STR = 2; //char(6 byte)
	    public final static int POS_O_DATEV = 3;	//char(10 byte)
	    public final static int POS_O_CNAME_STR = 4; //char(5 byte)
	    public final static int POS_O_PCODE_STR  = 5;	//char(6 byte)
	    public final static int POS_O_PNAME_STR  = 5;	//char(6 byte)
	    public final static int POS_O_PRICE_INT= 6; //number
	    public final static int POS_O_QTY_INT= 7;	//number
	    public final static int POS_O_TOTAL_INT = 8;	//number
		
	    
	   
	    
	    
		
	}
	
}
