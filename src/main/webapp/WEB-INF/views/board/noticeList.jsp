<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<style type="text/css">
		#tb:hover tbody tr:hover td {
			background: #e6d9f7;
		}
	</style>
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
	<header class="masthead1 text-center">
		<div class="container" align="center">
			<div>
				<h1>공지사항 목록</h1>
			</div>
			<div>
				<form id="frm">
					<select id="key" name="key">
						<option value="" selected="selected">전 체</option>
						<option value="title">제 목</option>
						<option value="subject">내 용</option>
						<option value="wdate">작성일자</option>
					</select>&nbsp;
					<input type="text" id="val" name="val" placeholder="검색할 내용을 입력하세요.">
					<input type="button"
						class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="검색"
						onclick="BoardSearch()">
				</form>
			</div><br>
			<div>
				<table border="1" id="tb">
					<thead>
						<tr>
							<th width="100">글번호</th>
							<th width="300">제 목</th>
							<th width="150">작성자</th>
							<th width="150">작성일자</th>
							<th width="70">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boards}" var="board">
							<tr onclick="BoardRead(${board.no })">
								<td align="center">${board.no }</td>
								<td>${board.title }</td>
								<td align="center">${board.name }</td>
								<td align="center">${board.wdate }</td>
								<td align="center">${board.hit }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div><br>
			<div>
				<c:if test="${id != null }">
					<button type="button"
						class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
						onclick="location.href='boardForm.do'">글쓰기</button>
				</c:if>
			</div>
			<div>
				<form id="readForm" method="post">
					<input type="hidden" id="no" name="no">
				</form>
			</div>
		</div>
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
	<script type="text/javascript">
		function BoardRead(n) {
			readForm.no.value = n;
			readForm.action = "boardRead.do";
			readForm.submit();
		}
		function BoardSearch() {
			var key = $("#key").val();
			var val = $("#val").val();
			$.ajax({
				url: "ajaxBoardSearch.do",
				type: "post",
				data: { "key": key, "val": val },
				dataType: "json",
				success: function (data) {
					if (data.length > 0) {
						resultHtml(data);
					} else {
						alert("해당되는 데이터가 존재하지 않는다.");
					}
				},
				error: function () {
					alert("데이터 검색이 실패했다..");
				}
			});
		}
		function resultHtml(data) {
			//데이터 출력을 여기다 하자.
			$("tbody").empty();
			$(data).each(function (index, item) {
				var row = $("<tr onclick='BoardRead(" + item.no + ")' />");
				row.append(
					$("<td align='center' />").text(item.no),
					$("<td />").text(item.title),
					$("<td align='center' />").text(item.name),
					$("<td align='center' />").text(item.wdate),
					$("<td align='center' />").text(item.hit)
				);
				$("tbody").append(row);
			});
		}
	</script>
</body>
</html>