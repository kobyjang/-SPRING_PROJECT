<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp" />
<div align="center">
	<div><h1>WellCome to my Web-site</h1></div>
	<button type-="button" onclick="memberList()"> 맴버리스트 ajax 호출하기</button>
	<div id="memberList"></div><!-- 호출결과를 여기다 출력한다 -->
</div>

<script type="text/javascript">
	function memberList(){
		$.ajax({
			url : "ajaxMemberList.do",
			dataType : "json",
			success : function(data){ //넘어온 데이터를 가공해서 원하는 곳에 출력해준다.
				console.log(data);
				alert(data);
			}
			//데이터를 가공하기
			$.each(data) = function(){
				
				
			}
		});
		
	}
</script>
</body>
</html>