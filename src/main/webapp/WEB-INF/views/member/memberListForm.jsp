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
    <header class="masthead1 text-center">
        <div class="container" align="center">
            <div>
                <h1>WellCome to my Web-site</h1>
            </div>
            <button type="button" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                onclick="memberList()">맴버리스트 ajax 호출하기</button>
            <div id="memberList"></div><!-- 호출결과를 여기다 출력한다 -->
        </div>
        <script type="text/javascript">
            function memberList() {
                $.ajax({
                    url: "ajaxMemberList.do",
                    dataType: "json",
                    success: function (data) { //넘어온 데이터를 가공해서 원하는 곳에 출력해준다.
                        //console.log(data);
                        //alert(data);
                        if (data.length > 0) {
                            viewHtml(data);

                        } else {
                            alert("데이터가 존재하지 않습니다.");
                        }
                        //데이터를 가공하기
                        //$.each(data) = function(data){
                    },
                    error: function () {
                        alert("데이터 가져오기 실패.");
                    }
                });
            }
            function viewHtml(data) {
                var html = "<table border='1>'";
                html += "<tr>";
                html += "<th width='150'>아이디</th>";
                html += "<th width='150'>이 름</th>";
                html += "<th width='150'>전화번호</th>";
                html += "<th width='200'>주 소</th>";
                html += "<th width='150'>권 한</th>";
                $(data).each(function (index, item) {
                    html += "<tr align='center'>";
                    html += "<td>" + item.id + "</td>";
                    html += "<td>" + item.name + "</td>";
                    html += "<td>" + item.tel + "</td>";
                    html += "<td>" + item.address + "</td>";
                    html += "<td>" + item.author + "</td></tr>";
                });
                html += "</table>";
                html += "<br>";
                html += "<button type='button'onclick='closeData()'>";
                html += "데이터창 닫기</button>";
                $("#memberList").append(html);
            }
            function closeData() {
                $("#memberList").empty();
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