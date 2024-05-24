<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 의뢰서 조회</title>
<link rel="icon"
	href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
<link rel="apple-touch-icon"
	href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
<link rel="stylesheet" href="Style.css">
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<script>
        document.addEventListener("DOMContentLoaded", function () {
            fetch("header.html")
                .then(response => response.text())
                .then(data => {
                    document.getElementById("header-container").innerHTML = data;
                });
        });
    </script>

	<div class="content">
		<!-- Page content goes here -->
	</div>
	<div id="cmpContent">
        <div>
            <img src="./free-icon-done-6459980.png" alt="" id="cmpImg">

        </div>
        <div>
            <h1>의뢰서 작성이 완료되었습니다!</h1>

        </div>
        <div>
            <a href="">
                <div>메인화면으로</div>
            </a>
            <a href="reqShow.jsp">
                <div>의뢰서 확인</div>
            </a>
        </div>
    </div>

</body>
</html>