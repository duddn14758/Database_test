<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>DB����</title>
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
			//����̹��� �ε��Ѵ�. �Ķ���ʹ� sql���� �ٸ��� �̸� ������ �ִ�.
			Class.forName("com.mysql.jdbc.Driver");

			//url�� jdbc:sql����:�ּ�/��Ű�� ������ �Է��Ѵ�.

			String query = "select id,pwd from userinfo where id='201312108'";

			//�������� �޴´�.
			Statement stmt = conn.createStatement();

			//���� �� ������� rs�� �޴´�.
			ResultSet rs = stmt.executeQuery(query);

			//���� ���������� �����ͺ��̽��� �о� ���δ�.
			while (rs.next()) {
				//���� ������ 0�����Ͱ� �ƴ϶� 1�� �����̴�. 
				String id = rs.getString(1);
				String pwd = rs.getString(2);

				//��� ���� ����Ѵ�.
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