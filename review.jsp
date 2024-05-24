<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 리뷰작성</title>
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

	<div>
		<h1>~ 님과의 거래는 어떠셨나요?</h1>
	</div>
	<div>
		<img src="./꽃집3.jpg" alt="" id="reviewImg">
	</div>
	<form action="ReviewController" method="post">
		<table>
			<tr>
				<td>별점</td>
			</tr>
			<tr>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>후기작성</td>
			</tr>
			<tr>
				<td><textarea name="review" id="" cols="40" rows="5"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="리뷰작성" id="button">
	</form>
</body>
</html>