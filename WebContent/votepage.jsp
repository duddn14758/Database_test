<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import = "test1.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import="java.sql.*"%>
<%@ page import= "java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<style type="text/css">
.ClassName {
	font-weight:bold;
	text-decoration:none;
	font-family:굴림체;
	box-shadow:inset #ffffff 0px 5px 8px -1px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px;
	background:#2ef1ff;
	background:-o-linear-gradient(90deg, #2ef1ff, #3b9ceb);
	background:-moz-linear-gradient( center top, #2ef1ff 5%, #3b9ceb 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #2ef1ff), color-stop(1, #3b9ceb) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#2ef1ff', endColorstr='#3b9ceb');
	background:-webkit-linear-gradient(#2ef1ff, #3b9ceb);
	background:-ms-linear-gradient(#2ef1ff, #3b9ceb);
	background:linear-gradient(#2ef1ff, #3b9ceb);
	text-indent:0px;
	line-height:30px;
	-moz-border-radius:25px;
	-webkit-border-radius:25px;
	border-radius:25px;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:20px;
	color:#ffffff;
	width:100px;
	height:30px;
	padding:13px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#659dab;
	border-width:2px;
	border-style:solid;
}

.ClassName:active {
	position:relative;
	top:3px
}

.ClassName:hover {
	background:#3b9ceb;
	background:-o-linear-gradient(90deg, #3b9ceb, #2ef1ff);
	background:-moz-linear-gradient( center top, #3b9ceb 5%, #2ef1ff 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3b9ceb), color-stop(1, #2ef1ff) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3b9ceb', endColorstr='#2ef1ff');
	background:-webkit-linear-gradient(#3b9ceb, #2ef1ff);
	background:-ms-linear-gradient(#3b9ceb, #2ef1ff);
	background:linear-gradient(#3b9ceb, #2ef1ff);
}
</style>
<!--<![endif]-->

<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>부경대학교 투표 시스템</title>
<meta name="description"
	content="Free Responsive Html5 Css3 Templates Designed by Kimmy | zerotheme.com">
<meta name="author" content="www.zerotheme.com">

<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
  ================================================== -->
<link rel="stylesheet" href="css/zerogrid.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link href="loginstyle.css" rel="stylesheet" id="bootstrap-css">




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
<script src="http://code.jquery.com/jquery-latest.js"></script>




<script type="text/javascript">
	function numerror(){
		alert("일치하는 학번이 없습니다.");
}
</script>
<script type="text/javascript">
	function pwerror(){
		alert("패스워드가 틀렸습니다.");
}
</script>
<script type="text/javascript" src="./lib/bignumber.min.js"></script>
<script type="text/javascript" src="./lib/web3-light.js"></script>
<script type="text/javascript">

var Web3=require('practiceContract');
var practiceContract=new Web3();
practiceContract.setProvider(new practiceContract.providers.HttpProvider("http://:8545"));
//var practiceContract = 
	web3.eth.contract([{"constant":true,"inputs":[{"name":"_number","type":"uint256"}],"name":"getPoll","outputs":[{"name":"","type":"uint256"},{"name":"","type":"string"},{"name":"","type":"string"},{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_addr","type":"address"}],"name":"registerVoter","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"getParticipation","outputs":[{"name":"","type":"uint256"},{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_number","type":"uint256"}],"name":"getCandidateInfo","outputs":[{"name":"","type":"uint256"},{"name":"","type":"string"},{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_days","type":"uint256"},{"name":"_hour","type":"uint256"},{"name":"_minute","type":"uint256"}],"name":"setTime","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_number","type":"uint256"}],"name":"update","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"getNumberOfVoter","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_number","type":"uint256"}],"name":"start","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_token","type":"uint256"}],"name":"transfer","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_number","type":"uint256"},{"name":"_affiliation","type":"string"},{"name":"_name","type":"string"}],"name":"registerCandidate","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_addr","type":"address"}],"name":"check","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"getResult","outputs":[{"name":"","type":"uint256"},{"name":"","type":"string"},{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"_token","type":"uint256"},{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"number","type":"uint256"},{"indexed":true,"name":"addr","type":"address"}],"name":"Voter","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"number","type":"uint256"},{"indexed":true,"name":"affiliation","type":"string"},{"indexed":true,"name":"name","type":"string"}],"name":"Candidate","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"token","type":"uint256"}],"name":"Transfer","type":"event"}]);


</script>


</head>

<% 
String jdbc_driver = "com.mysql.jdbc.Driver";
String db_url = "jdbc:mysql://localhost:3306/mysql" + "?serverTimezone=Asia/Seoul&useSLL=false";
String db_user = "user1";
String db_passwd = "user1";
String db_table = "userinfo";
boolean right=false;
boolean isvoted=false;
int votenum=0;

String id=request.getParameter("id");
String password=request.getParameter("password");

Class.forName(jdbc_driver);

Connection conn = DriverManager.getConnection(db_url, db_user, db_passwd);

try {
	//드라이버를 로드한다. 파라미터는 sql마다 다르면 미리 정해져 있다.
	Class.forName("com.mysql.jdbc.Driver");

	//url은 jdbc:sql유형:주소/스키마 순으로 입력한다.

	String query = "select id,pwd from userinfo";

	//쿼리문을 받는다.
	Statement stmt = conn.createStatement();

	//쿼리 후 결과값을 rs에 받는다.
	ResultSet rs = stmt.executeQuery(query);

	//행이 끝날때까지 데이터베이스를 읽어 들인다.
	while (rs.next()) {
		//열의 순서는 0번부터가 아니라 1번 부터이다. 
		String idin = rs.getString(1);
		String pwdin = rs.getString(2);
		if(idin.equals(id)){
			if(pwdin.equals(password)){
				right=true;
				%>
				<script>
		alert("로그인 성공");
</script>
				
<script type="text/javascript">
	function vote1(){		
		alert("투표하셨습니다");
		<%
		query="update votecount set vcount=vcount+1 where vnum=1";
		Statement stmt1 = conn.createStatement();
		int rs1 = stmt1.executeUpdate(query);
		%>
}
</script>

<script type="text/javascript">
	function vote2(){		
		alert("투표하셨습니다");
		<%
		query="update votecount set vcount=vcount+1 where vnum=2";
		Statement stmt2 = conn.createStatement();
		int rs2 = stmt1.executeUpdate(query);
		%>
}
</script>

<script type="text/javascript">
	function vote3(){		
		alert("투표하셨습니다");
		<%
		query="update votecount set vcount=vcount+1 where vnum=3";
		Statement stmt3 = conn.createStatement();
		int rs3 = stmt1.executeUpdate(query);
		%>
}
</script>
		

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
					<div id="main-content" class="col-1-3">
						<div class="wrap-col">

							<article>
								<div class="heading">
									<h2>
										<a href="#">어피치</a>
									</h2>
								</div>
								<div class="content">
									<img src="images/apeach.png" width="250px" height="100px" />
									<p>기호 1번 어피치입니다<br>특징은 복숭아입니다</p>

								</div>
								<div class="info">
							
								<a href='javascript:vote1()' class='ClassName' onclick="<%votenum=1;%>">투표하기</a>					
									<!-- <p>내용내용</p> -->
								</div>
							</article>
						</div>
					</div>

					<div id="main-content" class="col-1-3">
						<div class="wrap-col">

							<article>
								<div class="heading">
									<h2>
										<a href="#">튜브</a>
									</h2>
								</div>
								<div class="content">
									<img src="images/duck.png" width="250px" height="100px" />
									<p>기호 2번 튜브입니다<br> 화가나면 빨개집니다</p>

								</div>
								<div class="info">
									<p>
										<!-- 2011.11.29 - <a href="#">top</a><br><br> -->
								<a href='javascript:vote2()' class='ClassName'>투표하기</a>					
									</p>
								</div>
							</article>
						</div>
					</div>

					<div id="main-content" class="col-1-3">
						<div class="wrap-col">

							<article>
								<div class="heading">
									<h2>
										<a href="#">무지</a>
									</h2>
								</div>
								<div class="content">
									<img src="images/muzi.png" width="250px" height="100px" />
									<p>기호 3번 무지입니다<br>단무지 맞습니다</p>

								</div>
								<div class="info">
									<p>
										<!-- 2011.11.29 - <a href="#">top</a><br><br> -->
								<a href='javascript:vote3()' class='ClassName'>투표하기</a>					
									</p>
								</div>
							</article>
						</div>
					</div>
					</div>
					</div>

					<!-- 
			<div id="sidebar" class="">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>후보자</h2></div>
						<div class="content">
							<a href="#" target="_blank"><img src="images/suho.jpg" style="border: 0px;"/></a>
							<p>1번 수호랑</p>
						</div>
					</div>
					<div class="box">
						<div class="heading"><h2>대표곡</h2></div>
						<div class="content">
							<ul>
								<li><a href="http://music.naver.com/lyric/index.nhn?trackId=16676937">밤편지</a></li>
								<li><a href="http://music.naver.com/lyric/index.nhn?trackId=2319164">좋은날</a></li>
								<li><a href="#">너랑나</a></li>
								<li><a href="#">마쉬멜로우</a></li>
								<li><a href="#">Boo</a></li>
								<li><a href="#">Twenty three</a></li>
							</ul>
						</div>
					</div>
					<div class="box">
						<div class="heading"><h2>Popular Post</h2></div>
						<div class="content">
							<div class="post">
								<img src="images/img4.jpg" width="50px"/>
								<h4><a href="#">투표시</a></h4>
								<p>November 11 ,2012</p>
							</div>
							<div class="post">
								<img src="images/img5.jpg" width="50px"/>
								<h4><a href="#">Lorem ipsum dolor sit</a></h4>
								<p>November 11 ,2012</p>
							</div>
							<div class="post">
								<img src="images/img1.jpg" width="50px"/>
								<h4><a href="#">Lorem ipsum dolor sit</a></h4>
								<p>November 11 ,2012</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<article>
						<div class="heading">
							<h2><a href="#">밤편지</a></h2>
						</div>
						<div class="content">
							<img src="images/night.jpg" width="250px" height="100px"/>
							<p>이 밤 그날의 반딧불을 
당신의 창 가까이 보낼게요
음 사랑한다는 말이에요

나 우리의 첫 입맞춤을 떠올려
그럼 언제든 눈을 감고 
음 가장 먼 곳으로 가요

난 파도가 머물던 
모래 위에 적힌 글씨처럼
그대가 멀리 
사라져 버릴 것 같아 
늘 그리워 그리워

여기 내 마음속에 
모든 말을 
다 꺼내어 줄 순 없지만
사랑한다는 말이에요

어떻게 나에게 
그대란 행운이 온 걸까
지금 우리 함께 있다면 
아 얼마나 좋을까요

난 파도가 머물던 
모래 위에 적힌 글씨처럼
그대가 멀리 
사라져 버릴 것 같아
또 그리워 더 그리워

나의 일기장 안에
모든 말을 
다 꺼내어 줄 순 없지만
사랑한다는 말

이 밤 그날의 반딧불을 
당신의
창 가까이 띄울게요
음 좋은 꿈 이길 바라요</p>
		
						</div>
						<div class="info">
						</div>
					</article>
		</div>		
	</div>
	-->
		</section>
		<!--------------Footer--------------->
		<!-- 
<footer>
	<div class="wrap-footer">
		<div class="row">
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>Image Gallery</h2></div>
						<div class="content gallery">
							<a href="#"><img src="images/img1.jpg" width="120"/></a>
							<a href="#"><img src="images/img2.jpg" width="120"/></a>
							<a href="#"><img src="images/img3.jpg" width="120"/></a>
							<a href="#"><img src="images/img4.jpg" width="120"/></a>
							<a href="#"><img src="images/img5.jpg" width="120"/></a>
							<a href="#"><img src="images/img1.jpg" width="120"/></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>About Us</h2></div>
						<div class="content">
							<a href="http://www.zerotheme.com" target="_blank"><img src="images/zerotheme.jpg" style="border: 0px;"/></a>
							<p><a href="http://www.zerotheme.com" target="_blank">Free Html5 Templates</a> created by <a href="http://www.zerotheme.com">Zerotheme</a>. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-1-3">
				<div class="wrap-col">
					<div class="box">
						<div class="heading"><h2>Contact Us</h2></div>
						<div class="content">
							<p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue.</p>
							<p>Website : <a href="http://www.zerotheme.com" target="_blank">www.zerotheme.com</a></p>
							<p>+1 (123) 444-5677 <br/> +1 (123) 444-5678</p>
							<p>Address: 123 TemplateAccess Rd1</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<p>Copyright © 2014 - <a href="http://www.zerotheme.com" target="_blank">Free Responsive Html5 Templates</a> by Zerotheme.com</p>
	</div>
</footer>
-->

<button type="submit" class="btn btn-default" onclick="location.href='TotalCount.jsp'">
        						<span>결과보기</span>
        						</button>


	</div>
</body>
</html>

	<%	
	if(votenum==1){
		query="update votecount set vcount=vcount+1 where vnum=1";		
	}
	
	Statement stmt4 = conn.createStatement();
	int rs4 = stmt4.executeUpdate(query);
			}else{
				%>
				<script>
		alert("비밀번호가 틀렸습니다");
		history.go(-1);
</script>
				
				<%
			}
		}
	}
	if(right==false){
	
	%>
	
	
	<script>
		alert("일치하는 아이디가 없습니다");
		history.go(-1);
</script>	
	
	<%
	}

	stmt.close();

} catch (Exception e) {
	
	e.printStackTrace();
}

%>