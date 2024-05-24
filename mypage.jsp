<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>녹녹 - 마이페이지</title>
    <link rel="icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="apple-touch-icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
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

    <h1>마이페이지</h1>
    <div class="content">
        <div class="sellerMiniProfile">
            <div id="profileDiv1">
                <img src="./꽃집3.jpg" alt="" class="profileImg">
            </div>
            <div id="sellerInfo">
                <div>
                    <a href="profile.jsp">판매자 닉네임</a>
                </div>
                <div>
                    <span>판매자 등급 : </span><span>골드</span><img src="" alt="" id="tier">
                </div>
                <div>
                    <span>가입일자 : </span><span>2024.01.01</span>
                </div>
            </div>
            <div>
                <div class="pageButton" id="updateButton">
                    <a href="update.jsp" >개인정보수정</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 제안내역 -->
    <div class="content">
        <div>
            <h2>제안 내역</h2>

            <div class="proposalBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>의뢰 제목</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>의뢰자 님</span>
                    </div>
                </div>
                <div class="rightBox">
                    <div>
                        <span class="proposalStatus" id="proposalProgress">채택 대기중</span>
                    </div>
                    <div class="pageButton">
                        <a href="requestShow.jsp" >의뢰현황</a>
                    </div>
                </div>
            </div>
            <div class="proposalBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>의뢰 제목</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>의뢰자 님</span>
                    </div>
                </div>
                <div>
                    <span class="proposalStatus" id="proposalComlete">거래 완료</span>
                    <div class="pageButton">
                        <a href="requestShow.jsp" >
                            거래내역 보기
                        </a>
                    </div>
                </div>
            </div>
            <div class="proposalBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <span>의뢰 제목</span>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>의뢰자 님</span>
                    </div>
                </div>
                <div>
                    <span class="proposalStatus" id="reqCancel">의뢰 취소</span>
                </div>
            </div>
        </div>
    </div>

</body>

</html>