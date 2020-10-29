CREATE TABLE tbl_hlist4 (
        h_seq           NUMBER          PRIMARY KEY,
        h_name           nVARCHAR2(40)   NOT NULL,   
        h_address       nVARCHAR2(125)   NOT NULL,
        h_ge           NVARCHAR2(2000)   NOT NULL,   
        h_quiry           nVARCHAR2(1000),      
        h_offday       nVARCHAR2(500),   
        h_guide        nVARCHAR2(500),
        h_onuse           nVARCHAR2(400),      
        h_usage        nVARCHAR2(400),      
        h_car           nVARCHAR2(400),      
        h_infor          NVARCHAR2(2000)
        
);
drop table tbl_hlist4;