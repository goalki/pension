﻿package pension.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import pension.dto.BoardDto;

// DB접속을 하겠다!!
public class BoardDao {

	//Class.forName("com.mysql.jdbc.Driver"); // 기능은 무조건 메소드내에서 실행
	String db="jdbc:mysql://localhost:3306/pension"; 
	String userid="root";
    String pw="1234";
    Connection conn;
    //Connection conn=DriverManager.getConnection(db,userid,pw);
	
    public BoardDao() throws ClassNotFoundException, SQLException
    {
    	Class.forName("com.mysql.jdbc.Driver"); // 기능은 무조건 메소드내에서 실행
    	conn=DriverManager.getConnection(db,userid,pw);
    }
    public void conn_close() throws SQLException
    {
    	conn.close();
    }
    public void insert(BoardDto bdto) throws Exception
    {
         // 쿼리생성
        String sql="insert into board(title,name,content,pwd,writeday) ";
        sql=sql+" values(?,?,?,?,now())";
        // 심부름꾼 생성
        PreparedStatement pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, bdto.getTitle());
        pstmt.setString(2, bdto.getName());
        pstmt.setString(3, bdto.getContent());
        pstmt.setString(4, bdto.getPwd());
        // 쿼리 실행
        pstmt.executeUpdate();
        conn.close();
    }
    public int all_record() throws SQLException
    {
    	String sql="select * from board";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.last();
    	return rs.getRow();
    }
    public ArrayList<BoardDto> list(int pager) throws ClassNotFoundException, SQLException
    {
    	// page관련
    	int index;
		index=(pager-1)*10; 
     	// 쿼리 생성
    	String sql="select * from board order by id desc limit "+index+",10";
    	// 심부름꾼 생성
    	Statement stmt=conn.createStatement();
    	
    	// 쿼리 실행 => ResultSet
    	ResultSet rs=stmt.executeQuery(sql);
    	// BoardDto를 여러개 담을 수 있는 ArrayList생성
    	ArrayList<BoardDto> list=new ArrayList<BoardDto>();
        //ArrayList객체를 넘긴다..
    	
    	// BoardDto 하나를 만들고 하나의 레코드를 전달(rs)
    	while(rs.next())
    	{
    	  BoardDto bdto=new BoardDto();
    	  bdto.setId(rs.getInt("id"));
    	  bdto.setName(rs.getString("name"));
    	  bdto.setTitle(rs.getString("title"));
    	  bdto.setReadnum(rs.getInt("readnum")); 
    	  bdto.setWriteday(rs.getString("writeday"));
    	
    	  list.add(bdto);
    	}
    	
		/* return rs; */
    	return list;
    }
    
    public BoardDto content(String id) throws ClassNotFoundException, SQLException
    {
    	// 쿼리 생성
    	String sql="select * from board where id="+id;   
    	// 심부름꾼 실행 => ResultSet
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	BoardDto bdto=new BoardDto();
    	bdto.setId(rs.getInt("id"));
  	    bdto.setName(rs.getString("name"));
  	    bdto.setTitle(rs.getString("title"));
  	    bdto.setContent(rs.getString("content"));
  	    bdto.setReadnum(rs.getInt("readnum")); 
  	    bdto.setWriteday(rs.getString("writeday"));
    	return bdto;
    }
    public BoardDto update(String id) throws ClassNotFoundException, SQLException
    {
    	// 쿼리 생성
    	String sql="select * from board where id="+id;   
    	// 심부름꾼 실행 => ResultSet
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	BoardDto bdto=new BoardDto();
    	bdto.setId(rs.getInt("id"));
  	    bdto.setName(rs.getString("name"));
  	    bdto.setTitle(rs.getString("title"));
  	    bdto.setContent(rs.getString("content"));
  	    bdto.setReadnum(rs.getInt("readnum")); 
  	    bdto.setWriteday(rs.getString("writeday"));
    	return bdto;
    }
    
    public void udpate_ok(BoardDto bdto) throws ClassNotFoundException, SQLException
    {
    	 
        
        // request값 가져오기
 	   
    	// 쿼리 생성
    	String sql="update board set name=?, content=?, title=? where id=?";
    	// 심부름꾼 실행 => ResultSet
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, bdto.getName());
    	pstmt.setString(2, bdto.getContent());
    	pstmt.setString(3, bdto.getTitle());
    	pstmt.setInt(4, bdto.getId());
    	
    	pstmt.executeUpdate();
    	
    }
    
    public void delete(String id) throws ClassNotFoundException, SQLException
    {
        String sql="delete from board where id="+id;
        Statement stmt=conn.createStatement();
        stmt.executeUpdate(sql);
    }
    
    public ArrayList<BoardDto> get_five() throws SQLException
    {
     	String sql="select * from board order by id desc limit 5";
    	Statement stmt=conn.createStatement();
    	
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<BoardDto> list=new ArrayList<BoardDto>();

    	while(rs.next())
    	{
    	  BoardDto bdto=new BoardDto();
    	  bdto.setId(rs.getInt("id"));
    	  bdto.setName(rs.getString("name"));
    	  bdto.setTitle(rs.getString("title"));
    	  bdto.setReadnum(rs.getInt("readnum")); 
    	  bdto.setWriteday(rs.getString("writeday"));
    	
    	  list.add(bdto);
    	}
    	
    	return list;
    }
}
















