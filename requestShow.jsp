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
	<div class="myReq">
        <h2>의뢰서 제목</h2>
        <p>~님의 의뢰</p>
        <p>2024.00.00 ~ 2024.00.00</p>
        <div id="attImg">
            <img src="./인테리어 아이콘.png" alt="">
            <span>인테리어</span>
        </div>
        <table>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table>
        <span>의뢰인이 설정한 예산 : </span>
        <span>~~원</span>
        <p>요청 내용</p>
        <div>

        </div>
    </div>

    <div class="reProp">
        <h2>도착한 제안서</h2>
        <a href="">
            <div>
                <table>
                    <tr>
                        <td rowspan="3" id="propSellerImg"><img src="./꽃집3.jpg" alt=""></td>
                        <td>판매자</td>
                    </tr>
                    <tr>
                        <td>제안서 제목 <hr></td>
                    </tr>
                    <tr>
                        <td>가격</td>
                    </tr>
                </table>
            </div>
        </a>
        <a href="">
            <div>
                <table>
                    <tr>
                        <td rowspan="3" id="propSellerImg"><img src="./꽃집3.jpg" alt=""></td>
                        <td>판매자</td>
                    </tr>
                    <tr>
                        <td>제안서 제목 <hr></td>
                    </tr>
                    <tr>
                        <td>가격</td>
                    </tr>
                </table>
            </div>
        </a>
        <a href="">
            <div>
                <table>
                    <tr>
                        <td rowspan="3" id="propSellerImg"><img src="./꽃집3.jpg" alt=""></td>
                        <td>판매자</td>
                    </tr>
                    <tr>
                        <td>제안서 제목 <hr></td>
                    </tr>
                    <tr>
                        <td>가격</td>
                    </tr>
                </table>
            </div>
        </a>
        <a href="">
            <div>
                <table>
                    <tr>
                        <td rowspan="3" id="propSellerImg"><img src="./꽃집3.jpg" alt=""></td>
                        <td>판매자</td>
                    </tr>
                    <tr>
                        <td>제안서 제목 <hr></td>
                    </tr>
                    <tr>
                        <td>가격</td>
                    </tr>
                </table>
            </div>
        </a>
    </div>
</body>
</html>