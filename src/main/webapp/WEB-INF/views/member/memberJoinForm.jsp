<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>자기소개서 - 신입 장종민 자기소개서</title>
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
		type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->

	<link href="./resources/css/styles.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="home.do">신입 개발자 이력서</a>
			<button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<jsp:include page="../home/menu.jsp" />
				</ul>
			</div>
		</div>
	</nav>
	<!-- Contact Section-->
	<header class="masthead2 text-center">
		<div class="container" align="center">
			<div>
				<h1>회 원 가 입</h1>
			</div>
			<div>
				<form id="frm" action="memberJoin.do" method="post" onsubmit="return formCheck()"
					enctype="multipart/form-data">
					<div>
						<table>
							<tr>
								<th width="150">* 아 이 디</th>
								<td colspan="3">
									<input type="email" class="form-control form-control-lg"
										style="width:70%;float:left" id="id" name="id" placeholder="Your E-Mail..."
										required="required">
									&nbsp;&nbsp;
									<button type="button"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										style="float:right" id="btn" onclick="isIdCheck()"
										value="NoCheck">중복체크</button>
								</td>
							</tr>
							<tr>
								<th width="150">* 패스워드 </th>
								<td width="200">
									<input type="password" class="form-control form-control-lg" id="password"
										name="password" placeholder="Your password..." required="required">
								</td>
								<th width="150">* 패스워드확인 </th>
								<td width="200">
									<input type="password" class="form-control form-control-lg" id="password1"
										name="password1" placeholder="Your password check..." required="required">
								</td>
							</tr>
							<tr>
								<th width="150">* 이름</th>
								<td width="200">
									<input type="text" class="form-control form-control-lg" id="name" name="name"
										placeholder="Your Name" required="required">
								</td>
								<th width="150">전화 번호 </th>
								<td width="200">
									<input type="text" class="form-control form-control-lg" id="tel" name="tel"
										placeholder="Your Tel...">
								</td>
							</tr>
							<tr>
								<th width="150">주소</th>
								<td colspan="3" width="300">
									<input type="text" class="form-control form-control-lg" size="70" id="address"
										name="address" placeholder="Your address...">
								</td>
							</tr>
							<tr>
								<th width="150">사 진</th>
								<td>
									<input type="file" id="file" name="file">
								</td>
							</tr>
						</table>
					</div><br>
					<div>
						<button type="submit"
							class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">회원가입</button>&nbsp;&nbsp;&nbsp;
						<button type="reset"
							class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">취 소</button>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			function isIdCheck() {
				var id = $("#id").val(); //입력된 id값을 가져온다.
				if (id != '') {	//아이디가 비어 있으면 동작 하지 않도록 한다.
					$.ajax({
						url: "idCheck.do",
						type: "post",
						data: { "id": id },	//id 라는 변수에 가져온 id값을 담음
						dataType: "text",
						success: function (result) {
							if (result == '1') {
								alert("사용 가능한 아이디 입니다.");
								$("#btn").val("YesCheck");
								$("#btn").hide();
								$("#password").focus();
							} else {
								alert("Error 이미 사용하는 아이디 입니다.");
								$("#id").val('');
								$("#id").focus();

							}

						}

					});
				}
			}//아이디 중복체크 함수 끝
			function formCheck() { //폼 내용을 점검한다.
				if ($("#btn").val() != 'YesCheck') {
					alert("아이디 중복체크를 해주세요!!!")
					return false;
				}
				if ($("#password").val() != $("#password1").val()) {
					alert("패스워드가 일치 하지 않습니다.");
					return false;
				}
				return true;
			}
		</script>
	</header>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">선호 지역</h4>
					<p class="lead mb-0">
						서울, 경기
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">각각의 프로젝트들</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-facebook-f"></i></a>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-twitter"></i></a>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-linkedin-in"></i></a>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">현재 거주지</h4>
					<p class="lead mb-0">
						아직 미정- 면접후 결정<br>
						추천 감사합니다
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container"><small>Copyright &copy; Your Website 2021</small></div>
	</div>
</body>
</html>