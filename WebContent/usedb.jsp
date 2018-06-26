<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>DB연동</title>
</head>
<body>

	<%
		String jdbc_driver = "com.mysql.jdbc.Driver";
		String db_url = "jdbc:mysql://localhost:3306/mysql" + "?serverTimezone=Asia/Seoul&useSLL=false";
		String db_user = "user1";
		String db_passwd = "user1";
		String db_table = "userinfo";
		Class.forName(jdbc_driver);

		Connection conn = DriverManager.getConnection(db_url, db_user, db_passwd);
	%>
	<%
		try {
			//드라이버를 로드한다. 파라미터는 sql마다 다르면 미리 정해져 있다.
			Class.forName("com.mysql.jdbc.Driver");

			//url은 jdbc:sql유형:주소/스키마 순으로 입력한다.

			String query = "select id,pwd from userinfo where id='201312108'";

			//쿼리문을 받는다.
			Statement stmt = conn.createStatement();

			//쿼리 후 결과값을 rs에 받는다.
			ResultSet rs = stmt.executeQuery(query);

			//행이 끝날때까지 데이터베이스를 읽어 들인다.
			while (rs.next()) {
				//열의 순서는 0번부터가 아니라 1번 부터이다. 
				String id = rs.getString(1);
				String pwd = rs.getString(2);

				//결과 값을 출력한다.
				out.print(id + "\t" + pwd);
				out.print("<Br>");

			}

			stmt.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>








</body>
</html>