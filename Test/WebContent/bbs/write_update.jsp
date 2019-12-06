<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
 
   <%
    if(session_id==null||session_id==""){
   %>
    	<script>
    	alert('로그인 후 작성하세요');
    	history.back();
   		</script>
    <%	
    }

     //첨부파일
     String uploadPath="F:\\Jsp\\Test\\WebContent\\upload";
     int size=10*1024*1024;
     
     MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		
     String code=multi.getParameter("code");
     String gongji=multi.getParameter("gongji");
     String subject=multi.getParameter("subject");
     String comment=multi.getParameter("comment");
     String file1=multi.getParameter("file1");
     
     Enumeration files=multi.getFileNames();
     file1 = (String)files.nextElement();
     String file_name = multi.getFilesystemName(file1);
     
     if(file_name==null){
    	 file_name=""; 
     }

     
     //today weather
      java.util.Date today=new java.util.Date();
      SimpleDateFormat cal=new SimpleDateFormat("yyyy-MM-dd");
      String signdate=cal.format(today);
      
      Connection conn = DriverManager.getConnection(url, user, password);
      
      String sql_max ="select max(fid) as fid_max from "+code+""; 
      Statement stmt_max = conn.createStatement();
      ResultSet rs_max=stmt_max.executeQuery(sql_max);
      
      int fid=0;
      if(rs_max.next()){
    	  if(rs_max.getInt("fid_max")>0){
    		  fid=rs_max.getInt("fid_max")+1;
    	  }else{
    		  fid=1;
    	  }
      }
      
      
     //디비접근. 입력
     String sql = "insert into "+code+" (id,name,subject,comment,gongji,file1_o,signdate,fid,thread) values('"+session_id+"','"+session_name+"','"+subject+"','"+comment+"','"+gongji+"','"+file_name+"','"+signdate+"',"+fid+",'A')";
     Statement stmt = conn.createStatement(); 
     stmt.executeUpdate(sql);
     
%>
<script>
location.href="list.jsp?code=<%=code%>";
</script>