<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
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

<script src="form1.js"></script>
<script src="form2.js"></script>

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
<body>
	<div class="wrap-body zerogrid">	
	<%
String jdbc_driver="com.mysql.jdbc.Driver";
String db_url="jdbc:mysql://localhost:3306/mysql"+"?serverTimezone=Asia/Seoul&useSLL=false";
String db_user="user1";
String db_passwd="user1";
String db_table="userinfo";
Class.forName(jdbc_driver);

Connection conn=DriverManager.getConnection(db_url,db_user,db_passwd);


%>
	
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


					<div id="main-content" class="col-3-5">
						<div class="wrap-col">

							<div class="content"></div>

						</div>
					</div>


					<!------ Include the above in your HEAD tag ---------->

					<!--
    youtube:  https://www.youtube.com/channel/UCqlv40k1N0L9nsSrzL1OWwg/videos
    site:     http://www.templateindirr.com
-->

					<div class="login">
						<div class="container">
							<div class="col-lg-6 col-lg-offset-">

								<div class="inner-form">
									<FORM action="votepage.html">


										<h1>로그인하세요</h1>

										<form role="form">

											<div class="row">

												<div class="col-3-5">
												<br>
													<img src="images/004.jpg" width="450px" height="450px" />
												</div>


												<div class="col-2-5">
													<br> <br> <br> <br> <br> <label>ID</label>
													<div class="form-group">
														<input type="text" name="id" id="email"
															class="form-control" placeholder="" required/>
													</div>
												</div>

												<div class="col-2-5">
													<label>Password<br></label>
													<div class="form-group">
														<input type="password" name="password" id="password"
															class="form-control" placeholder="" required/>
													</div>
												</div>

												<div class="col-2-5">

													<button type="submit" class="btn btn-default">
														<span>LOGIN</span>
													</button>
												</div>
										</FORM>
								

								<div class="col-2-5">
									<div class="forgot">
										<p>Forgot ID or Password ?</p>
									</div>
								</div>
</div>
							</div>
							</form>


						</div>
						<!-- inner-form -->

					</div>
				</div>
			</div>
	</div>
	</div>
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

	</div>
</body>
</html>