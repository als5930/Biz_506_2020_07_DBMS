select * from tbl_member;

delete from tbl_member WHERE m_userid='admin12';




commit;

update tbl_member set enabled ='1' WHERE m_userid = 'admin11';