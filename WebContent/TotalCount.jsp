<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import = "test1.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import="java.sql.*"%>
<%@ page import= "java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %><!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>부경대학교 투표 시스템</title>
<meta name="description"
	content="online vote for pknu">
<meta name="author" content="www.zerotheme.com">

<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
  ================================================== -->
<link rel="stylesheet" href="css/responsive.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/style.css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="loginstyle.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/zerogrid.css">


<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
<!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->

<link href='./images/004.jpg' rel='icon' type='image/x-icon' />

</head>

<% 
String jdbc_driver = "com.mysql.jdbc.Driver";
String db_url = "jdbc:mysql://localhost:3306/mysql" + "?serverTimezone=Asia/Seoul&useSLL=false";
String db_user = "user1";
String db_passwd = "user1";
String db_table = "userinfo";
boolean right=false;
boolean isvoted=false;

String id=request.getParameter("id");
String password=request.getParameter("password");

Class.forName(jdbc_driver);

Connection conn = DriverManager.getConnection(db_url, db_user, db_passwd);

try {
	//드라이버를 로드한다. 파라미터는 sql마다 다르면 미리 정해져 있다.
	Class.forName("com.mysql.jdbc.Driver");

	//url은 jdbc:sql유형:주소/스키마 순으로 입력한다.

	String query = "select vnum,vcount from votecount";

	//쿼리문을 받는다.
	Statement stmt = conn.createStatement();

	//쿼리 후 결과값을 rs에 받는다.
	ResultSet rs = stmt.executeQuery(query);
	
	rs.next(); 
	String n1 = rs.getString(1);
	int c1 = rs.getInt(2);
	rs.next(); 
	String n2 = rs.getString(1);
	int c2 = rs.getInt(2);
	rs.next(); 
	String n3 = rs.getString(1);
	int c3 = rs.getInt(2);

	int total=c1+c2+c3;
	int percent=100/total;
	int p1=c1*percent;
	int p2=c2*percent;
	int p3=c3*percent;
	
	
%>
<body>
	<div class="wrap-body zerogrid">
		<!--------------Header--------------->
		<header>
			<div class="wrap-header">

				<div class="top"></div>

				<div id="logo">
					<h1>2018 마스코트</h1>
					<p>Pukyong National University</p>
				</div>

			</div>
		</header>

		<!--------------Content--------------->
		<section id="content">
			<div class="wrap-content">
				<div class="row block">
					<div id="main-content" class="col-2-5">
						<div class="wrap-col">
							<img src="images/night.jpg" width="200px" height="100px" />
						</div>
					</div>
					<div id="main-content" class="col-1-5">
						<div class="wrap-col">
							<h2>1위 - 밤편지</h2>
						</div>
					</div>

					<div class="container-fluid">
						<div class="col col-md-9">
							<div class="row">
								<div class="col col-md-5">
									<br>
									<br>
									<h4>결과표</h4>
									밤편지<span class="pull-right strong"><%=c1 %></span>
									<div class="progress">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="15" aria-valuemin="0"
											aria-valuemax="100" style="width: <%=p1%>%"><%=percent*c1 %>%</div>
									</div>

									너랑나<span class="pull-right strong"><%=c2 %></span>
									<div class="progress">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100" style="width: <%=p2%>%"><%=percent*c2 %>%</div>
									</div>

									스물셋<span class="pull-right strong"><%=c3 %></span>
									<div class="progress">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="8" aria-valuemin="0"
											aria-valuemax="100" style="width: <%=p3%>%"><%=percent*c3 %>%</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</section>

	</div>
</body>
</html>
<%
stmt.close();

} catch (Exception e) {
	e.printStackTrace();
}

	%>