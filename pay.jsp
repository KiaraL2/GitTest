<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 의뢰서 작성</title>
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

	<div class="payBox">
        <div>
            <h3>구매정보</h3>
            <hr>
        </div>
        
        <table>
            <tr>
                <td>흙</td>
                <td><span>10,000원</span></td>
            </tr>
            <tr>
                <td>화분</td>
                <td><span>10,000원</span></td>
            </tr>
            <tr>
                <td>고무나무</td>
                <td><span>10,000원</span></td>
            </tr>
            <tr>
                <td>계</td>
                <td><span>50,000원</span></td>
            </tr>
        </table>
        <hr>
        <table>
            <tr>
                <td>중개 수수료</td>
                <td>3,000원</td>
            </tr>
            <tr>
                <td>배송비</td>
                <td>3,000원</td>
            </tr>
        </table>
        <h3>총 62,000원</h3>
        <hr>
        <form action="pay.do" method="post">
            <h3>배송지 정보</h3>
            <hr>
            <table>
                <tr>
                    <td>주소</td>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>상세주소</td>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>수령인</td>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>배송 요청사항</td>
                    <td>
                        <select name="" id="">
                            <option value=""></option>
                            <option value=""></option>
                            <option value=""></option>
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
            </table>
            <h3>결제정보</h3>
            <hr>
            <table>
                <tr>
                    <td>결제수단</td>
                    <td>
                        <input type="checkbox">카드결제
                        <input type="checkbox">실시간 계좌이체
                        <input type="checkbox">무통장입금
                    </td>
                </tr>
            </table>
                <input type="submit" id="button" value="결제하기">
    </form>
    
</div>

</body>
</html>