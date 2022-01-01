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
                <h1>게시글 작성</h1>
            </div>
            <div>
                <form id="frm" action="boardInsert.do" method="post">
                    <div>
                        <table>
                            <tr>
                                <th width="100">제 목</th>
                                <td width="200">
                                    <input type="text" class="form-control form-control-lg" id="title"
                                        name="title" size="37" required>
                                </td>
                                <th width="100">작성일자</th>
                                <td width="50">
                                    <input type="date" class="form-control form-control-lg" id="wdate"
                                        name="wdate" required>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td colspan="3" class="form-control form-control-lg">
                                    <textarea rows="10" cols="80" id="subject" name="subject"
                                        style="border: none" required></textarea>
                                </td>
                            </tr>
                        </table>
                    </div><br>
                    <div>
                        <input type="submit"
                            class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                            value="등록">&nbsp;&nbsp;
                        <input type="reset"
                            class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                            value="취소">&nbsp;&nbsp;
                        <input type="button"
                            class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                            onclick="location.href='noticeList.do'" value="목록">
                    </div>
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
</body>
</html>