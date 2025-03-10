package pension.dao;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import com.oreilly.servlet.MultipartRequest;

import pension.dto.BoardDto;
import pension.dto.MemberDto;
import pension.dto.ReserveDto;
import pension.dto.RoomDto;
import pension.dto.TourDto;

public class Dao {

	String db="jdbc:mysql://localhost:3306/pension"; 
	String userid="root";
    String pw="1234";
    Connection conn;
	public Dao() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver"); // 기능은 무조건 메소드내에서 실행
		conn=DriverManager.getConnection(db,userid,pw);
	}
	// room 테이블의 전체내용을 가져오기
    public ArrayList<RoomDto> get_room() throws SQLException
    {
    	String sql="select name,id from room order by price asc";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<RoomDto> list=new ArrayList<RoomDto>();
    	while(rs.next())
    	{
    		RoomDto rdto=new RoomDto();
    		rdto.setId(rs.getInt("id"));
    		rdto.setName(rs.getString("name"));
    		list.add(rdto);
    	}
    	/*
    	String sql="select name from room order by price asc";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<String> list=new ArrayList<String>();
    	while(rs.next())
    	{
    		list.add(rs.getString("name"));
    	}
    	*/
    	return list;
    }
    
    // 사용자가 선택한 방의 정보를 가져오기
    public RoomDto select_room(String id) throws SQLException
    {
    	String sql="select * from room where id="+id;
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	RoomDto rdto=new RoomDto();
    	rdto.setId(rs.getInt("id"));
    	rdto.setName(rs.getString("name"));
    	rdto.setMax(rs.getInt("max"));
    	rdto.setMin(rs.getInt("min"));
    	rdto.setPrice(rs.getInt("price"));
    	
    	return rdto;
    }
    
    public void insert(ReserveDto rdto,String userid) throws SQLException // reserve테이블에 입력값을 넣기
    {
    	// 쿼리 생성
    	String outday="date_add('"+rdto.getInday()+"', interval "+rdto.getSuk()+" day)";
    	String sql="insert into reserve(rid,name,phone,inday,outday";
    	sql=sql+",inwon1,inwon2,inwon3,bbq,pork,suk_price,etc_price,tot_price,writeday,userid) ";
    	sql=sql+" values(?,?,?,?,"+outday+",?,?,?,?,?,?,?,?,now(),?)";
    	
    	// date_add('2021-01-05',interval 숙박일 day);
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setInt(1, rdto.getRid());
    	pstmt.setString(2, rdto.getName());
    	pstmt.setString(3, rdto.getPhone());
    	pstmt.setString(4, rdto.getInday());
    	//pstmt.setString(5, outday);
    	pstmt.setInt(5, rdto.getInwon1());
    	pstmt.setInt(6, rdto.getInwon2());
    	pstmt.setInt(7, rdto.getInwon3());
    	pstmt.setInt(8, rdto.getBbq());
    	pstmt.setInt(9, rdto.getPork());
    	pstmt.setInt(10, rdto.getSuk_price());
    	pstmt.setInt(11, rdto.getEtc_price());
    	pstmt.setInt(12, rdto.getTot_price());
    	pstmt.setString(13, userid);
    	pstmt.executeUpdate();
    	//System.out.println(pstmt.toString());
    	conn.close();
    }
    
    public ReserveDto get_reserve(String userid) throws SQLException // 방금 예약한 정보를 가져오는 메소드(1개의 레코드)
    {
    	String sql="select * from reserve where userid='"+userid+"' order by id desc limit 1";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	ReserveDto rdto=new ReserveDto();
    	rdto.setId(rs.getInt("id"));
    	rdto.setRid(rs.getInt("rid"));
    	rdto.setName(rs.getString("name"));
    	rdto.setPhone(rs.getString("phone"));
    	rdto.setInday(rs.getString("inday"));
    	rdto.setOutday(rs.getString("outday"));
    	rdto.setInwon1(rs.getInt("inwon1"));
    	rdto.setInwon2(rs.getInt("inwon2"));
    	rdto.setInwon3(rs.getInt("inwon3"));
    	rdto.setBbq(rs.getInt("bbq"));
    	rdto.setPork(rs.getInt("pork"));
    	rdto.setSuk_price(rs.getInt("suk_price"));
    	rdto.setEtc_price(rs.getInt("etc_price"));
    	rdto.setTot_price(rs.getInt("tot_price"));
    	rdto.setWriteday(rs.getString("writeday"));
    	
    	// 방이름 가져오기 
    	sql="select name from room where id="+rdto.getRid();
    	rs=stmt.executeQuery(sql);
    	rs.next();
    	rdto.setRoomname(rs.getString("name"));
    	return rdto;
    	
    }
    
    public int room_state(String rid, String xday) throws SQLException// y-m-d형태의 값과 room의 id(rid)값을 받아서 예약이 되었는지를 int값으로 가져온다..
    {
    	String sql="select count(*) as cnt from reserve where inday <= ?  and outday > ? and rid=? ";
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, xday);
    	pstmt.setString(2, xday);
    	pstmt.setString(3, rid);
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	return rs.getInt("cnt");
    }
    
    public int suk_check(String y,String m, String d, String rid) throws SQLException
    {
        int yy=Integer.parseInt(y);
        int mm=Integer.parseInt(m);
        int dd=Integer.parseInt(d);
    	LocalDate inday=LocalDate.of(yy, mm, dd);
    	int chk=0;
    	
    	for(int i=1;i<=8;i++)
    	{
    	  LocalDate xday=inday.plusDays(i);
    	  chk=i;
    	  String sql="select * from reserve where inday <= ? and outday > ? and rid=?";
    	  PreparedStatement pstmt=conn.prepareStatement(sql);
          pstmt.setString(1, xday.toString());
          pstmt.setString(2, xday.toString());
          pstmt.setString(3, rid);
    	
    	  ResultSet rs=pstmt.executeQuery();
          if(rs.next())  // 레코드 있으면 true, 없으면 false
          {
        	break;// 멈춘다!!
          }
        
    	} // for문의 끝
    	
    	return chk; // 몇박을 나타낼지!!
    }

    public void member_ok(MemberDto mdto) throws SQLException
    {
    	String sql="insert into member(name,userid,pwd,phone,writeday) ";
    	sql=sql+" values(?,?,?,?,now())";
    	PreparedStatement pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, mdto.getName());
        pstmt.setString(2, mdto.getUserid());
        pstmt.setString(3, mdto.getPwd());
        pstmt.setString(4, mdto.getPhone());
        
        pstmt.executeUpdate();
        
        conn.close();
     
    }
    
    public boolean ismember(String userid, String pwd) throws SQLException // 회원인지 아닌지  true, false
    {
    	String sql="select * from member where userid=? and pwd=?";
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, userid);
    	pstmt.setString(2, pwd);
    	
    	ResultSet rs=pstmt.executeQuery(); // 레코드가 있든지, 없든지
    	
		/*
		 * if(rs.next()) return true; else return false;
		 */
    	return rs.next();
    }
    
    public int isuserid(String userid) throws SQLException
    {
    	String sql="select count(*) as num from member where userid='"+userid+"'";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	// 아이디가 존재하면 1, 아니면 0
    	return rs.getInt("num");
    }
    
    public MemberDto mypage(String userid) throws SQLException
    {
    	String sql="select * from member where userid='"+userid+"'";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	MemberDto mdto=new MemberDto();
    	mdto.setName(rs.getString("name"));
    	mdto.setPhone(rs.getString("phone"));
    	
    	return mdto;
    }
    
    public ArrayList<ReserveDto> my_reserve(String userid) throws SQLException
    {
    	String sql="select r2.name,r1.inday,r1.outday,r1.bbq,r1.pork";
    	sql=sql+",r1.writeday from reserve as r1, room as r2 ";
    	sql=sql+" where r1.rid=r2.id and userid='"+userid+"'";
    	System.out.println(sql);
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<ReserveDto> list=new ArrayList<ReserveDto>();
    	while(rs.next())
    	{
    	  ReserveDto rdto=new ReserveDto();
    	  rdto.setRoomname(rs.getString("name"));
    	  rdto.setInday(rs.getString("inday"));
    	  rdto.setOutday(rs.getString("outday"));
       	  rdto.setBbq(rs.getInt("bbq"));
    	  rdto.setPork(rs.getInt("pork"));
    	  rdto.setWriteday(rs.getString("writeday"));
    	  
    	  list.add(rdto);
    	}
    	
    	return list;
    }
    
    public String get_name(String userid) throws SQLException
    {
    	String sql="select name from member where userid='"+userid+"'";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	return rs.getString("name");
    }
    
    // 아이디찾기
    public String userid_search(String name, String phone) throws SQLException
    {
    	String sql="select userid from member where name=? and phone=?";
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, name);
    	pstmt.setString(2, phone);
    	ResultSet rs=pstmt.executeQuery();
    	if(rs.next())
    	{
    		return rs.getString("userid");
    	}
    	else
    	{
    		return "0";
    	}
    	
    }
    
    // 비밀번호 찾기
    public String pwd_search(String userid, String name, String phone) throws SQLException
    {
    	String sql="select pwd from member where name=? and phone=? and userid=?";
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, name);
    	pstmt.setString(2, phone);
    	pstmt.setString(3, userid);
    	ResultSet rs=pstmt.executeQuery();
    	if(rs.next())
    	{
    		return rs.getString("pwd");
    	}
    	else
    	{
    		return "0";
    	}
    }
    
    
    // 관리자가 reserve테이블에 읽어오기
    public ArrayList<ReserveDto> admin_reserve() throws SQLException
    {
    	String sql="select r1.name, r1.phone, r2.name as roomname,r1.inday,r1.outday,r1.bbq,r1.pork";
    	sql=sql+",r1.writeday from reserve as r1, room as r2 ";
    	sql=sql+" where r1.rid=r2.id order by r1.id desc";
    	//System.out.println(sql);
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<ReserveDto> list=new ArrayList<ReserveDto>();
    	while(rs.next())
    	{
    	  ReserveDto rdto=new ReserveDto();
    	  rdto.setName(rs.getString("name"));
    	  rdto.setPhone(rs.getString("phone"));
    	  rdto.setRoomname(rs.getString("roomname"));
    	  rdto.setInday(rs.getString("inday"));
    	  rdto.setOutday(rs.getString("outday"));
       	  rdto.setBbq(rs.getInt("bbq"));
    	  rdto.setPork(rs.getInt("pork"));
    	  rdto.setWriteday(rs.getString("writeday"));
    	  
    	  list.add(rdto);
    	}
    	
    	return list;
    }
    
    public ArrayList<MemberDto> admin_member() throws SQLException
    {
    	String sql="select * from member where userid != 'admin' order by name asc";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<MemberDto> list=new ArrayList<MemberDto>();
    	while(rs.next()) 
    	{
    	   	MemberDto mdto=new MemberDto();
    	   	mdto.setName(rs.getString("name"));
    	   	mdto.setUserid(rs.getString("userid"));
    	   	mdto.setPhone(rs.getString("phone"));
    	   	mdto.setWriteday(rs.getString("writeday"));
    	   	mdto.setState(rs.getInt("state"));
    	   	
    	   	list.add(mdto);
    	}
    	
    	return list;
    }
    
    public String get_name_phone(String userid) throws SQLException
    {
    	String sql="select name,phone from member where userid='"+userid+"'";
    	Statement stmt=conn.createStatement();
    	ResultSet rs=stmt.executeQuery(sql);
    	rs.next();
    	String np=rs.getString("name")+","+rs.getString("phone");
    	return np;
    }
    
    public void tour_write_ok(TourDto tdto) throws SQLException
    {
    	String sql="insert into tour(title,name,content,fname,writeday)";
        sql=sql+" values(?,?,?,?,now())";
		
		PreparedStatement pstmt=conn.prepareStatement(sql); 
		pstmt.setString(1, tdto.getTitle());
		pstmt.setString(2, tdto.getName());
		pstmt.setString(3, tdto.getContent());
		pstmt.setString(4, tdto.getFname());
		 
		pstmt.executeUpdate();
		
    }
    
    public ArrayList<TourDto> tour_list() throws SQLException
    {
        String sql="select * from tour order by id desc";
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery(sql);
        
        ArrayList<TourDto> list=new ArrayList<TourDto>();
    	while(rs.next()) 
    	{
    	   	TourDto tdto=new TourDto();
    	   	tdto.setName(rs.getString("name"));
    	   	tdto.setTitle(rs.getString("title"));
    	   	tdto.setFname(rs.getString("fname"));
    	   	tdto.setWriteday(rs.getString("writeday"));
  	   	    tdto.setId(rs.getInt("id"));
  	   	    
    	   	list.add(tdto);
    	}
    	System.out.println(list.size());
    	return list;
    }
    
    public TourDto tour_content(String id) throws SQLException
    {
    	String sql="select * from tour where id="+id;
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery(sql);
        rs.next();
    	TourDto tdto=new TourDto();
    	tdto.setName(rs.getString("name"));
    	tdto.setTitle(rs.getString("title"));
    	tdto.setFname(rs.getString("fname"));
    	tdto.setWriteday(rs.getString("writeday"));
  	   	tdto.setId(rs.getInt("id"));
  	   	tdto.setContent(rs.getString("content"));
  	   	    
    	return tdto;
    }
    
    public ArrayList<TourDto> get_five() throws SQLException
    {
     	String sql="select * from tour order by id desc limit 5";
    	Statement stmt=conn.createStatement();
    	
    	ResultSet rs=stmt.executeQuery(sql);
    	ArrayList<TourDto> list=new ArrayList<TourDto>();
    	while(rs.next()) 
    	{
    	  TourDto tdto=new TourDto();
	   	  tdto.setName(rs.getString("name"));
	   	  tdto.setTitle(rs.getString("title"));
	   	  tdto.setFname(rs.getString("fname"));
	   	  tdto.setWriteday(rs.getString("writeday"));
	   	  tdto.setId(rs.getInt("id"));
	   	    
	   	  list.add(tdto);
	    }
	    System.out.println(list.size());
	return list;
    	
    
    }
}













